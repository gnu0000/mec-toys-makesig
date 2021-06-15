/*
 * makesig.c
 * Monday, 1/25/1999.
 * Craig Fitz
 */
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main (int argc, char *argv[])
   {
   char  sz[256];
   int   i, iIdx, c;
   FILE  *fp;

   memset (sz, 0x7F, 256);
   if (argc != 2)
      return printf ("Usage: MAKESIG2 file   - Where file contains spaces and [] pairs only.\n");
   if (!(fp = fopen (argv[1], "rt")))
      return printf ("Cannot open file");
   for (i=iIdx=0; (c = fgetc(fp)) != EOF;)
      {
      if (c=='[') fgetc(fp);
      if (c=='\n')
         {
         if (i) i=0, iIdx++;
         sz[iIdx++] = '\xff';
         }
      else
         {
         if (i==6) i=0, iIdx++;
         sz[iIdx] &= ~((c != ' ') << i++);
         }
      }
   if (i) iIdx++;
   if (sz[iIdx-1] != '\xff') sz[iIdx++] = '\xff';
   sz[iIdx] = '\0';

   for (i=0,c='a'; !i&&c<='z'; c++)
      if (!strchr (sz, c))
         for (; sz[i]; i++)
            if (sz[i]=='\xff') sz[i]=c;

   printf ("main(i){char*_=\"");
   for (i=0; sz[i]; i++)
      {
      putchar (sz[i]);
      if (strchr ("\\\"", sz[i])) putchar ('\\');
      }
   printf ("\";while\n(i=*_++)for(;i>1;printf(i-%d?", --c);
   printf ("i&1?\" \":\"[]\":(i=0,\"\\n\")),i/=2);}\n");
   }
