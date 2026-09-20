.class Lcom/t4f/saver/PermissionFileSaver;
.super Lcom/t4f/saver/FileSaver;
.source "PermissionFileSaver.java"


# instance fields
.field private mActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private mEnablePermissionCheck:Z


# direct methods
.method public constructor <init>(Ljava/io/File;Landroid/app/Activity;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/t4f/saver/FileSaver;-><init>(Ljava/io/File;)V

    const/4 p1, 0x1

    .line 15
    iput-boolean p1, p0, Lcom/t4f/saver/PermissionFileSaver;->mEnablePermissionCheck:Z

    if-eqz p2, :cond_0

    .line 19
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/t4f/saver/PermissionFileSaver;->mActivity:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private getActivity()Landroid/app/Activity;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/t4f/saver/PermissionFileSaver;->mActivity:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 36
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public save(Ljava/lang/String;[B)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 24
    iget-boolean v0, p0, Lcom/t4f/saver/PermissionFileSaver;->mEnablePermissionCheck:Z

    if-eqz v0, :cond_0

    .line 25
    invoke-direct {p0}, Lcom/t4f/saver/PermissionFileSaver;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 26
    invoke-virtual {v0, v1}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 28
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xd05

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    .line 31
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/t4f/saver/FileSaver;->save(Ljava/lang/String;[B)Z

    move-result p1

    return p1
.end method
