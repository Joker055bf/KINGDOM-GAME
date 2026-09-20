.class public Lcom/crosspromotion/sdk/utils/error/ErrorBuilder;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static build(I)Lcom/crosspromotion/sdk/utils/error/Error;
    .locals 2

    new-instance v0, Lcom/crosspromotion/sdk/utils/error/Error;

    invoke-static {p0}, Lcom/crosspromotion/sdk/utils/error/ErrorCode;->getErrorMessage(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/crosspromotion/sdk/utils/error/Error;-><init>(ILjava/lang/String;)V

    return-object v0
.end method
