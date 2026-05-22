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


## Hard reset to a specific commit

{% highlight c linenos %}
git reset --hard HEAD~3
{% endhighlight %}

**What it does**: Discards all changes (staged, unstaged, and commits) going back 3 commits. Your working directory will match the state of that commit exactly. **Use with caution** — this is destructive and cannot be undone easily.

You can also reset to a specific commit hash:

{% highlight c linenos %}
git reset --hard abc1234
{% endhighlight %}


## Create a patch file from commits

{% highlight c linenos %}
git format-patch -1 HEAD
{% endhighlight %}

**What it does**: Generates a `.patch` file from the last commit. The file contains the diff along with commit metadata (author, date, message).

To generate patches for the last N commits:

{% highlight c linenos %}
git format-patch -3 HEAD
{% endhighlight %}

To generate a patch from a range of commits:

{% highlight c linenos %}
git format-patch abc1234..def5678
{% endhighlight %}


## Apply a patch file

{% highlight c linenos %}
git apply test.patch
{% endhighlight %}

**What it does**: Applies the changes from `test.patch` to your working directory without creating a commit.

To check if a patch can be applied cleanly before actually applying it:

{% highlight c linenos %}
git apply --check test.patch
{% endhighlight %}

To apply the patch **and** preserve the original commit metadata (author, date, message):

{% highlight c linenos %}
git am test.patch
{% endhighlight %}


## Cherry-pick a commit from another branch

{% highlight c linenos %}
git cherry-pick abc1234
{% endhighlight %}

**What it does**: Applies the changes from a specific commit onto your current branch, creating a new commit.
