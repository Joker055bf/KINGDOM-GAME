.class public Lcom/osbcp/cssparser/IncorrectFormatException;
.super Ljava/lang/Exception;
.source "IncorrectFormatException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/osbcp/cssparser/IncorrectFormatException$ErrorCode;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final errorCode:Lcom/osbcp/cssparser/IncorrectFormatException$ErrorCode;


# direct methods
.method constructor <init>(Lcom/osbcp/cssparser/IncorrectFormatException$ErrorCode;Ljava/lang/String;)V
    .locals 0

    .line 40
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 41
    iput-object p1, p0, Lcom/osbcp/cssparser/IncorrectFormatException;->errorCode:Lcom/osbcp/cssparser/IncorrectFormatException$ErrorCode;

    return-void
.end method


# virtual methods
.method public getErrorCode()Lcom/osbcp/cssparser/IncorrectFormatException$ErrorCode;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/osbcp/cssparser/IncorrectFormatException;->errorCode:Lcom/osbcp/cssparser/IncorrectFormatException$ErrorCode;

    return-object v0
.end method
