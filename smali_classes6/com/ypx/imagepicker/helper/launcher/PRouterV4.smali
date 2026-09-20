.class public Lcom/ypx/imagepicker/helper/launcher/PRouterV4;
.super Landroidx/fragment/app/Fragment;
.source "PRouterV4.java"


# instance fields
.field private mCallbacks:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/ypx/imagepicker/helper/launcher/PLauncher$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private mCodeGenerator:Ljava/util/Random;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 17
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/ypx/imagepicker/helper/launcher/PRouterV4;->mCallbacks:Landroid/util/SparseArray;

    .line 18
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/ypx/imagepicker/helper/launcher/PRouterV4;->mCodeGenerator:Ljava/util/Random;

    return-void
.end method

.method private makeRequestCode()I
    .locals 3

    const/4 v0, 0x0

    .line 49
    :cond_0
    iget-object v1, p0, Lcom/ypx/imagepicker/helper/launcher/PRouterV4;->mCodeGenerator:Ljava/util/Random;

    const v2, 0xffff

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/lit8 v0, v0, 0x1

    .line 51
    iget-object v2, p0, Lcom/ypx/imagepicker/helper/launcher/PRouterV4;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_1

    const/16 v2, 0xa

    if-lt v0, v2, :cond_0

    :cond_1
    return v1
.end method

.method public static newInstance()Lcom/ypx/imagepicker/helper/launcher/PRouterV4;
    .locals 1

    .line 25
    new-instance v0, Lcom/ypx/imagepicker/helper/launcher/PRouterV4;

    invoke-direct {v0}, Lcom/ypx/imagepicker/helper/launcher/PRouterV4;-><init>()V

    return-object v0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 57
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 58
    iget-object v0, p0, Lcom/ypx/imagepicker/helper/launcher/PRouterV4;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ypx/imagepicker/helper/launcher/PLauncher$Callback;

    .line 59
    iget-object v1, p0, Lcom/ypx/imagepicker/helper/launcher/PRouterV4;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    if-eqz v0, :cond_0

    .line 61
    invoke-interface {v0, p2, p3}, Lcom/ypx/imagepicker/helper/launcher/PLauncher$Callback;->onActivityResult(ILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 30
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 31
    invoke-virtual {p0, p1}, Lcom/ypx/imagepicker/helper/launcher/PRouterV4;->setRetainInstance(Z)V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;Lcom/ypx/imagepicker/helper/launcher/PLauncher$Callback;)V
    .locals 2

    .line 35
    invoke-direct {p0}, Lcom/ypx/imagepicker/helper/launcher/PRouterV4;->makeRequestCode()I

    move-result v0

    .line 36
    iget-object v1, p0, Lcom/ypx/imagepicker/helper/launcher/PRouterV4;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 37
    invoke-virtual {p0, p1, v0}, Lcom/ypx/imagepicker/helper/launcher/PRouterV4;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
