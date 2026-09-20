.class Lcom/unity/udp/extension/sdk/utils/ActivityResultUtils$1;
.super Ljava/lang/Object;
.source "ActivityResultUtils.java"

# interfaces
.implements Lcom/unity/udp/extension/sdk/utils/ActivityResultUtils$Lazy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity/udp/extension/sdk/utils/ActivityResultUtils;->getLazySingletonFragment(Landroid/app/FragmentManager;)Lcom/unity/udp/extension/sdk/utils/ActivityResultUtils$Lazy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/unity/udp/extension/sdk/utils/ActivityResultUtils$Lazy<",
        "Lcom/unity/udp/extension/sdk/utils/HandleActivityResultFragment;",
        ">;"
    }
.end annotation


# instance fields
.field private mFragment:Lcom/unity/udp/extension/sdk/utils/HandleActivityResultFragment;

.field final synthetic this$0:Lcom/unity/udp/extension/sdk/utils/ActivityResultUtils;

.field final synthetic val$fragmentManager:Landroid/app/FragmentManager;


# direct methods
.method constructor <init>(Lcom/unity/udp/extension/sdk/utils/ActivityResultUtils;Landroid/app/FragmentManager;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/unity/udp/extension/sdk/utils/ActivityResultUtils$1;->this$0:Lcom/unity/udp/extension/sdk/utils/ActivityResultUtils;

    iput-object p2, p0, Lcom/unity/udp/extension/sdk/utils/ActivityResultUtils$1;->val$fragmentManager:Landroid/app/FragmentManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized get()Lcom/unity/udp/extension/sdk/utils/HandleActivityResultFragment;
    .locals 2

    monitor-enter p0

    .line 36
    :try_start_0
    iget-object v0, p0, Lcom/unity/udp/extension/sdk/utils/ActivityResultUtils$1;->mFragment:Lcom/unity/udp/extension/sdk/utils/HandleActivityResultFragment;

    if-nez v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/unity/udp/extension/sdk/utils/ActivityResultUtils$1;->this$0:Lcom/unity/udp/extension/sdk/utils/ActivityResultUtils;

    iget-object v1, p0, Lcom/unity/udp/extension/sdk/utils/ActivityResultUtils$1;->val$fragmentManager:Landroid/app/FragmentManager;

    invoke-static {v0, v1}, Lcom/unity/udp/extension/sdk/utils/ActivityResultUtils;->access$000(Lcom/unity/udp/extension/sdk/utils/ActivityResultUtils;Landroid/app/FragmentManager;)Lcom/unity/udp/extension/sdk/utils/HandleActivityResultFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/unity/udp/extension/sdk/utils/ActivityResultUtils$1;->mFragment:Lcom/unity/udp/extension/sdk/utils/HandleActivityResultFragment;

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/unity/udp/extension/sdk/utils/ActivityResultUtils$1;->mFragment:Lcom/unity/udp/extension/sdk/utils/HandleActivityResultFragment;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lcom/unity/udp/extension/sdk/utils/ActivityResultUtils$1;->get()Lcom/unity/udp/extension/sdk/utils/HandleActivityResultFragment;

    move-result-object v0

    return-object v0
.end method
