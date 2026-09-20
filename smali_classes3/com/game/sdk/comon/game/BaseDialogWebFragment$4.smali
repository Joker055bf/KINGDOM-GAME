.class Lcom/game/sdk/comon/game/BaseDialogWebFragment$4;
.super Landroid/webkit/WebChromeClient;
.source "BaseDialogWebFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game/sdk/comon/game/BaseDialogWebFragment;->initWebView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game/sdk/comon/game/BaseDialogWebFragment;


# direct methods
.method constructor <init>(Lcom/game/sdk/comon/game/BaseDialogWebFragment;)V
    .locals 0

    .line 201
    iput-object p1, p0, Lcom/game/sdk/comon/game/BaseDialogWebFragment$4;->this$0:Lcom/game/sdk/comon/game/BaseDialogWebFragment;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 0

    return-void
.end method
