.class Lcom/openmediation/sdk/utils/OaidHelper$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bun/miitmdid/interfaces/IIdentifierListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openmediation/sdk/utils/OaidHelper;->internalGetOaid(Landroid/content/Context;Lcom/openmediation/sdk/utils/OaidHelper$OnGetOaidCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/openmediation/sdk/utils/OaidHelper$OnGetOaidCallback;


# direct methods
.method constructor <init>(Lcom/openmediation/sdk/utils/OaidHelper$OnGetOaidCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/openmediation/sdk/utils/OaidHelper$1;->val$callback:Lcom/openmediation/sdk/utils/OaidHelper$OnGetOaidCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSupport(Lcom/bun/miitmdid/interfaces/IdSupplier;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/bun/miitmdid/interfaces/IdSupplier;->getOAID()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/openmediation/sdk/utils/OaidHelper;->access$002(Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    invoke-static {}, Lcom/openmediation/sdk/utils/OaidHelper;->access$100()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/openmediation/sdk/utils/OaidHelper;->access$100()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p1, p0, Lcom/openmediation/sdk/utils/OaidHelper$1;->val$callback:Lcom/openmediation/sdk/utils/OaidHelper$OnGetOaidCallback;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/openmediation/sdk/utils/OaidHelper$OnGetOaidCallback;->result()V

    :cond_2
    return-void
.end method
