//
// AED, November 2021
//
// Solution of the first practical assignement (subset sum problem)
//
// Place your student numbers and names here
//

#if __STDC_VERSION__ < 199901L
# error "This code must must be compiled in c99 mode or later (-std=c99)" // to handle the unsigned long long data type
#endif
#ifndef STUDENT_H_FILE
# define STUDENT_H_FILE "000000.h"
#endif

// #define BTF_ITR
// #define BTF_RCR_NOTM
#define BTF_RCR_OTM

//
// include files
//

#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include "P02/elapsed_time.h"
#include STUDENT_H_FILE


//
// custom data types
//
// the STUDENT_H_FILE defines the following constants and data types
//
//   #define min_n       24                   --- the smallest n value we will handle
//   #define max_n       57                   --- the largest n value we will handle
//   #define n_sums      20                   --- the number of sums for each n value
//   #define n_problems  (max_n - min_n + 1)  --- the number of n values
//
//   typedef unsigned long long integer_t;    ---  64-bit unsigned integer
//   typedef struct
//   {
//     int n;                                 --- number of elements of the set (for a valid problem, min_n <= n <= max_n)
//     integer_t p[max_n];                    --- the elements of the set, already sorted in increasing order (only the first n elements are used)
//     integer_t sums[n_sums];                --- several sums (problem: for each sum find the corresponding subset)
//   }
//   subset_sum_problem_data_t;               --- weights p[] and sums for a given value of n
//
//   subset_sum_problem_data_t all_subset_sum_problems[n_problems]; --- // the problems
//


int bruteforce_iterativo (int n,integer_t p[n],integer_t desired_sum,integer_t *b) {
  for (int mask = 0; mask < 1<<n; mask++)
  {
      integer_t partial_sum = 0;
      for (int bit = 0; bit < n; bit++) {
        if (mask & (1<<bit))
          partial_sum += p[bit];
      }
      if (partial_sum == desired_sum){
        *b = mask;
        return 1;
      }
  }
    return 0;
}

int bruteforce_recursivo(int n,integer_t p[n], int level, integer_t partial_sum,integer_t desired_sum, integer_t mask, integer_t *b) 
{
  if (level > n) {
    return 0;
  }
  if (partial_sum == desired_sum) {
    *b = mask;
    return 1;
  }

  if(bruteforce_recursivo (n,p,level+1,partial_sum+p[level],desired_sum,(mask|(1<<level)),b)) {
    return 1;
  } else {
    return bruteforce_recursivo (n,p,level+1,partial_sum,desired_sum,mask,b);
  }
  
}


int bruteforce_recursivo_otimizado(int n,integer_t p[n], int level, integer_t partial_sum,integer_t desired_sum, integer_t mask, integer_t *b, integer_t *sums) 
{
  if (partial_sum == desired_sum) {
    *b = mask;
    return 1;
  }

  if (level < 0 || partial_sum > desired_sum || partial_sum + sums[level] < desired_sum) {
    // printf("%llu \n", sums[level]);
    return 0;
  }
  
  if(bruteforce_recursivo_otimizado (n,p,level-1,partial_sum+p[level],desired_sum,(mask|(1<<(level))),b,sums)) {
    return 1;
  } else {
    return bruteforce_recursivo_otimizado (n,p,level-1,partial_sum,desired_sum,mask,b, sums);
  }
}


//
// main program
//

int main(void)
{
  fprintf(stderr,"Program configuration:\n");
  fprintf(stderr,"  min_n ....... %d\n",min_n);
  fprintf(stderr,"  max_n ....... %d\n",max_n);
  fprintf(stderr,"  n_sums ...... %d\n",n_sums);
  fprintf(stderr,"  n_problems .. %d\n",n_problems);
  fprintf(stderr,"  integer_t ... %d bits\n",8 * (int)sizeof(integer_t));
  //
  // for each n
  //
  for(int i = 0;i < n_problems;i++)
  {
    int n = all_subset_sum_problems[i].n; // the value of n
    if(n > 20)
      continue; // skip large values of n
    integer_t *p = all_subset_sum_problems[i].p; // the weights
    //
    // for each sum
    //
    for(int j = 0;j < n_sums;j++)
    {
      integer_t desired_sum = all_subset_sum_problems[i].sums[j]; // the desired sum
      integer_t b=0; // array to record the solution
      
      double start = cpu_time();
      #ifdef BTF_ITR 
        bruteforce_iterativo(n,p,desired_sum,&b);
      #endif

      #ifdef BTF_RCR_NOTM
        bruteforce_recursivo(n,p,0,0,desired_sum,0,&b);
      #endif

      #ifdef BTF_RCR_OTM
        integer_t *sums = (integer_t *) malloc(n*sizeof(integer_t));

        for (int i = 0; i < n; i++) {
          sums[i] = 0;
          for (int j = 0; j <= i; j++) {
            sums[i]+=p[j];
          }
        }

        bruteforce_recursivo_otimizado(n,p,n-1,0,desired_sum,0,&b, sums);
      #endif
      double end = cpu_time();

      for (int i = 0; i < n; i++){
        printf("%s",b&1 ? "1":"0");
        b=b>>1;
      }
      printf(" %lfs\n",end-start);
    }
  }
  return 0;
}
