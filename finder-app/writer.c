#include <stdio.h>
#include <sys/syslog.h>
#include <syslog.h>
#include <stdlib.h>

int main(int argc, char *argv[])
{
  openlog(NULL, 0, LOG_USER);
if (argc<3) {
    syslog(LOG_ERR, "INVALID ARGUMENTS");
    closelog();
    exit(1);
}

  FILE *file = fopen(argv[1], "w");
  if (file == NULL) {
  syslog(LOG_ERR, "Unable to create file");
    printf("error 1");
    closelog();
    exit(1);
  }
  syslog(LOG_DEBUG, "Writing %s to %s", argv[2], argv[1]);
  fprintf(file, "%s", argv[2]);
  fclose(file);
  closelog();
  return 0;
}
