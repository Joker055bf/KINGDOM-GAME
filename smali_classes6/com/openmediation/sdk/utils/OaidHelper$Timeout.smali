.class Lcom/openmediation/sdk/utils/OaidHelper$Timeout;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/openmediation/sdk/utils/OaidHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Timeout"
.end annotation


# instance fields
.field private mListener:Lcom/bun/miitmdid/interfaces/IIdentifierListener;


# direct methods
.method public constructor <init>(Lcom/bun/miitmdid/interfaces/IIdentifierListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/openmediation/sdk/utils/OaidHelper$Timeout;->mListener:Lcom/bun/miitmdid/interfaces/IIdentifierListener;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "OaidHelper"

    const-string v1, "get oaid result delay timeout"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/openmediation/sdk/utils/OaidHelper$Timeout;->mListener:Lcom/bun/miitmdid/interfaces/IIdentifierListener;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/openmediation/sdk/utils/OaidHelper;->access$100()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/openmediation/sdk/utils/OaidHelper$Timeout;->mListener:Lcom/bun/miitmdid/interfaces/IIdentifierListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/bun/miitmdid/interfaces/IIdentifierListener;->onSupport(Lcom/bun/miitmdid/interfaces/IdSupplier;)V

    :cond_0
    return-void
.end method
