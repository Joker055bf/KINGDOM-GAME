.class public Lorg/htmlcleaner/HtmlCleanerException;
.super Ljava/lang/RuntimeException;
.source "HtmlCleanerException.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "HtmlCleaner expression occureed!"

    .line 47
    invoke-direct {p0, v0}, Lorg/htmlcleaner/HtmlCleanerException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method
