.class public interface abstract Lorg/htmlcleaner/audit/HtmlModificationListener;
.super Ljava/lang/Object;
.source "HtmlModificationListener.java"


# virtual methods
.method public abstract fireConditionModification(Lorg/htmlcleaner/conditional/ITagNodeCondition;Lorg/htmlcleaner/TagNode;)V
.end method

.method public abstract fireHtmlError(ZLorg/htmlcleaner/TagNode;Lorg/htmlcleaner/audit/ErrorType;)V
.end method

.method public abstract fireUglyHtml(ZLorg/htmlcleaner/TagNode;Lorg/htmlcleaner/audit/ErrorType;)V
.end method

.method public abstract fireUserDefinedModification(ZLorg/htmlcleaner/TagNode;Lorg/htmlcleaner/audit/ErrorType;)V
.end method
