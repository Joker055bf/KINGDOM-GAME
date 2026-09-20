.class public Lcom/openmediation/sdk/utils/error/ErrorBuilder;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static build(ILjava/lang/String;I)Lcom/openmediation/sdk/utils/error/Error;
    .locals 1

    new-instance v0, Lcom/openmediation/sdk/utils/error/Error;

    invoke-direct {v0, p0, p1, p2}, Lcom/openmediation/sdk/utils/error/Error;-><init>(ILjava/lang/String;I)V

    return-object v0
.end method
