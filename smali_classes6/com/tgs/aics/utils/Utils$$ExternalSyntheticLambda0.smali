.class public final synthetic Lcom/tgs/aics/utils/Utils$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Lcom/tgs/aics/ui/dialog/TipsDialog;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/tgs/aics/ui/dialog/TipsDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tgs/aics/utils/Utils$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lcom/tgs/aics/utils/Utils$$ExternalSyntheticLambda0;->f$1:Lcom/tgs/aics/ui/dialog/TipsDialog;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/tgs/aics/utils/Utils$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    iget-object v1, p0, Lcom/tgs/aics/utils/Utils$$ExternalSyntheticLambda0;->f$1:Lcom/tgs/aics/ui/dialog/TipsDialog;

    invoke-static {v0, v1, p1}, Lcom/tgs/aics/utils/Utils;->lambda$showPermissionTipsDialog$1(Landroid/content/Context;Lcom/tgs/aics/ui/dialog/TipsDialog;Landroid/view/View;)V

    return-void
.end method
