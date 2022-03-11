#include <stdio.h>

struct node {
  const char* content;
  struct node* left;
  struct node* right;
};

int main (int argc, const char* argv[]) {
  struct node p = { "Parent", NULL, NULL };
  struct node child = { "Child", NULL, NULL };
  p.left = &child;
  printf ("%s %s\n%s\n", p.content, child.content, p.left -> content);
}
