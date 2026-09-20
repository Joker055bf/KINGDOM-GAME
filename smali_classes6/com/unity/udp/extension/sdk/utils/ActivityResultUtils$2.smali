.class Lcom/unity/udp/extension/sdk/utils/ActivityResultUtils$2;
.super Ljava/lang/Object;
.source "ActivityResultUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity/udp/extension/sdk/utils/ActivityResultUtils;->getFragment(Landroid/app/FragmentManager;)Lcom/unity/udp/extension/sdk/utils/HandleActivityResultFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unity/udp/extension/sdk/utils/ActivityResultUtils;

.field final synthetic val$fragmentManager:Landroid/app/FragmentManager;


# direct methods
.method constructor <init>(Lcom/unity/udp/extension/sdk/utils/ActivityResultUtils;Landroid/app/FragmentManager;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/unity/udp/extension/sdk/utils/ActivityResultUtils$2;->this$0:Lcom/unity/udp/extension/sdk/utils/ActivityResultUtils;

    iput-object p2, p0, Lcom/unity/udp/extension/sdk/utils/ActivityResultUtils$2;->val$fragmentManager:Landroid/app/FragmentManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/unity/udp/extension/sdk/utils/ActivityResultUtils$2;->val$fragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    return-void
.end method
