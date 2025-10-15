---
title:  "Useful Git Commands"
layout: post
categories: media
---

## Amend the last commit without changing the message

{% highlight c linenos %}
git commit --amend --no-edit -s
{% endhighlight %}

**What it does**: Amends the last commit, keeping the same message, and adds a `Signed-off-by` line.


## Soft reset last commit and keep the changes

{% highlight c linenos %}
git reset HEAD~1
{% endhighlight %}

**What it does**: Remove the last commit but keeps your code changes.


## Blame a specific range of range

{% highlight c linenos %}
git blame -L 120,140 path/file.txt
{% endhighlight %}

**What it does**: Shows who last modified lines 120-140 in the specified file.


## Clean up references to deleted remote branches

{% highlight c linenos %}
git fetch -p
# or
git remote prune origin
{% endhighlight %}

**What it does**: Removes local references to remote branches that no longer exist on the remote repository.
