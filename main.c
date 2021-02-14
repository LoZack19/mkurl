#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

#define STD_ENCODING	"UTF-8"
#define STD_TYPE		"Link"
#define STD_ICON		"text-html"

char* MakeUrl(const char* Encoding, const char* Name, const char* Type, const char* URL, const char* Icon)
{
	char* Hyperlink = (char*)malloc(200);
	
	sprintf(Hyperlink, "[Desktop Entry]\n"
				    "Encoding=%s\n"
				    "Name=%s\n"
				    "Type=%s\n"
				    "URL=%s\n"
				    "Icon=%s",
				    Encoding, Name, Type, URL, Icon);
	
	Hyperlink = realloc(Hyperlink, strlen(Hyperlink)+1);
	return Hyperlink;
}

int streq(char* str1, char* str2, int size)
{
	for(int i = 0; i < size; i++)
		if(str1[i] != str2[i])
			return 0;
	else return 1;
}

int main(int argc, char* argv[])
{

	char* Hyperlink;
	char Filename[50] = {0};
	FILE* GnomeHL;
	
	if(argc != 3){
		fprintf(stderr, "Incorrect number of arguments\n"
					 "Use the following syntax:\n"
					 "mkurl [NAME] [URL]\n");
		exit(-1);
	}
	
	Hyperlink = MakeUrl(STD_ENCODING, argv[1], STD_TYPE, argv[2], STD_ICON);
	sprintf(Filename, "%s.desktop", argv[1]);
	
	GnomeHL = fopen(Filename, "w");
	fputs(Hyperlink, GnomeHL);
	fclose(GnomeHL);
	
	return 0;
}
