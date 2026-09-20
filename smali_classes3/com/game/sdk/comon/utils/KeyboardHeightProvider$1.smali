.class Lcom/game/sdk/comon/utils/KeyboardHeightProvider$1;
.super Ljava/lang/Object;
.source "KeyboardHeightProvider.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game/sdk/comon/utils/KeyboardHeightProvider;-><init>(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game/sdk/comon/utils/KeyboardHeightProvider;


# direct methods
.method constructor <init>(Lcom/game/sdk/comon/utils/KeyboardHeightProvider;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/game/sdk/comon/utils/KeyboardHeightProvider$1;->this$0:Lcom/game/sdk/comon/utils/KeyboardHeightProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/game/sdk/comon/utils/KeyboardHeightProvider$1;->this$0:Lcom/game/sdk/comon/utils/KeyboardHeightProvider;

    invoke-static {v0}, Lcom/game/sdk/comon/utils/KeyboardHeightProvider;->access$000(Lcom/game/sdk/comon/utils/KeyboardHeightProvider;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/game/sdk/comon/utils/KeyboardHeightProvider$1;->this$0:Lcom/game/sdk/comon/utils/KeyboardHeightProvider;

    invoke-static {v0}, Lcom/game/sdk/comon/utils/KeyboardHeightProvider;->access$100(Lcom/game/sdk/comon/utils/KeyboardHeightProvider;)V

    :cond_0
    return-void
.end method
