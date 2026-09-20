.class public Lcom/unity/udp/extension/sdk/utils/HandleActivityResultFragment;
.super Landroid/app/Fragment;
.source "HandleActivityResultFragment.java"


# instance fields
.field private mCallbacks:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/unity/udp/extension/sdk/utils/ActivityResultUtils$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private random:Ljava/util/Random;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 12
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/unity/udp/extension/sdk/utils/HandleActivityResultFragment;->mCallbacks:Landroid/util/SparseArray;

    .line 13
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/unity/udp/extension/sdk/utils/HandleActivityResultFragment;->random:Ljava/util/Random;

    return-void
.end method

.method private generateRequestCode()I
    .locals 3

    const/4 v0, 0x0

    .line 49
    :cond_0
    iget-object v1, p0, Lcom/unity/udp/extension/sdk/utils/HandleActivityResultFragment;->random:Ljava/util/Random;

    const v2, 0xffff

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/lit8 v0, v0, 0x1

    .line 51
    iget-object v2, p0, Lcom/unity/udp/extension/sdk/utils/HandleActivityResultFragment;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_1

    const/4 v2, 0x5

    if-lt v0, v2, :cond_0

    :cond_1
    return v1
.end method

.method public static newInstance()Lcom/unity/udp/extension/sdk/utils/HandleActivityResultFragment;
    .locals 1

    .line 16
    new-instance v0, Lcom/unity/udp/extension/sdk/utils/HandleActivityResultFragment;

    invoke-direct {v0}, Lcom/unity/udp/extension/sdk/utils/HandleActivityResultFragment;-><init>()V

    return-object v0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 57
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 58
    iget-object v0, p0, Lcom/unity/udp/extension/sdk/utils/HandleActivityResultFragment;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unity/udp/extension/sdk/utils/ActivityResultUtils$Callback;

    .line 59
    iget-object v1, p0, Lcom/unity/udp/extension/sdk/utils/HandleActivityResultFragment;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    if-eqz v0, :cond_0

    .line 61
    invoke-interface {v0, p1, p2, p3}, Lcom/unity/udp/extension/sdk/utils/ActivityResultUtils$Callback;->onActivityResult(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 21
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 22
    invoke-virtual {p0, p1}, Lcom/unity/udp/extension/sdk/utils/HandleActivityResultFragment;->setRetainInstance(Z)V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;ILcom/unity/udp/extension/sdk/utils/ActivityResultUtils$Callback;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/unity/udp/extension/sdk/utils/HandleActivityResultFragment;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v0, p2, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 38
    invoke-virtual {p0}, Lcom/unity/udp/extension/sdk/utils/HandleActivityResultFragment;->isAdded()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 39
    invoke-virtual {p0, p1, p2}, Lcom/unity/udp/extension/sdk/utils/HandleActivityResultFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_1
    const-string p1, "ActivityResultUtils: fragment is not added"

    .line 41
    invoke-static {p1}, Lcom/unity/udp/extension/sdk/utils/Logger;->logInfo(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;Lcom/unity/udp/extension/sdk/utils/ActivityResultUtils$Callback;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 29
    :cond_0
    invoke-direct {p0}, Lcom/unity/udp/extension/sdk/utils/HandleActivityResultFragment;->generateRequestCode()I

    move-result v0

    .line 30
    invoke-virtual {p0, p1, v0, p2}, Lcom/unity/udp/extension/sdk/utils/HandleActivityResultFragment;->startActivityForResult(Landroid/content/Intent;ILcom/unity/udp/extension/sdk/utils/ActivityResultUtils$Callback;)V

    return-void
.end method
