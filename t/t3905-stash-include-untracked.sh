	echo 1 > HEAD &&
	mkdir untracked &&
	echo untracked >untracked/untracked &&
?? actual
	git status --porcelain >actual &&
	test_cmp expect actual
diff --git a/HEAD b/HEAD
new file mode 100644
index 0000000..d00491f
--- /dev/null
+++ b/HEAD
@@ -0,0 +1 @@
+1