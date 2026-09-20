.class public Lcom/openmediation/sdk/utils/helper/AfHelper;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static sendAfRequest(ILjava/lang/Object;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/openmediation/sdk/utils/helper/AfHelper$1;

    invoke-direct {v0, p0, p1}, Lcom/openmediation/sdk/utils/helper/AfHelper$1;-><init>(ILjava/lang/Object;)V

    invoke-static {v0}, Lcom/openmediation/sdk/utils/WorkExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
