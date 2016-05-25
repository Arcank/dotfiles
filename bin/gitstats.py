#!/usr/bin/python

"""Computes the git statistics of a repo."""

import argparse
import os
import subprocess
import sys


def Main():
  parser = argparse.ArgumentParser(
      description = 'Computes statistics of a git repository.')
  parser.add_argument('repo_path', help='path to the git repository')
  args = parser.parse_args()

  repo_path = os.path.abspath(args.repo_path)
  developer_path = os.path.expanduser(os.path.join('~', 'Developer'))

  # Only work in ~/Developer.
  if not repo_path.startswith(developer_path):
    print >>sys.stderr, "Only valid for repos in ~/Developer."
    sys.exit(1)

  # Stats for repo_path go in ~/Developer/stats/repo_path.
  stats_path = repo_path.replace('Developer', 'Developer' + os.sep + 'stats', 1)

  DEVNULL = open(os.devnull, 'w')
  subprocess.check_call(['gitstats', repo_path, stats_path], stdout=DEVNULL)
  subprocess.check_call(['open', os.path.join(stats_path, 'index.html')])

if __name__ == '__main__':
  sys.exit(Main())
