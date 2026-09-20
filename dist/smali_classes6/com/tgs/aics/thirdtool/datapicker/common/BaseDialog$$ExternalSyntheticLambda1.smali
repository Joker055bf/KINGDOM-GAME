.class public final synthetic Lcom/tgs/aics/thirdtool/datapicker/common/BaseDialog$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field public final synthetic f$0:Landroid/content/DialogInterface$OnShowListener;

.field public final synthetic f$1:Landroid/content/DialogInterface$OnShowListener;


# direct methods
.method public synthetic constructor <init>(Landroid/content/DialogInterface$OnShowListener;Landroid/content/DialogInterface$OnShowListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tgs/aics/thirdtool/datapicker/common/BaseDialog$$ExternalSyntheticLambda1;->f$0:Landroid/content/DialogInterface$OnShowListener;

    iput-object p2, p0, Lcom/tgs/aics/thirdtool/datapicker/common/BaseDialog$$ExternalSyntheticLambda1;->f$1:Landroid/content/DialogInterface$OnShowListener;

    return-void
.end method


# virtual methods
.method public final onShow(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/common/BaseDialog$$ExternalSyntheticLambda1;->f$0:Landroid/content/DialogInterface$OnShowListener;

    iget-object v1, p0, Lcom/tgs/aics/thirdtool/datapicker/common/BaseDialog$$ExternalSyntheticLambda1;->f$1:Landroid/content/DialogInterface$OnShowListener;

    invoke-static {v0, v1, p1}, Lcom/tgs/aics/thirdtool/datapicker/common/BaseDialog;->lambda$setOnShowListener$0(Landroid/content/DialogInterface$OnShowListener;Landroid/content/DialogInterface$OnShowListener;Landroid/content/DialogInterface;)V

    return-void
.end method
