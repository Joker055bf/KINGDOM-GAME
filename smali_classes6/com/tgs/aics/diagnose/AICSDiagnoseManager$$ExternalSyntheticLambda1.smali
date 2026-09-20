.class public final synthetic Lcom/tgs/aics/diagnose/AICSDiagnoseManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/tgs/aics/ui/dialog/TipsDialog;

.field public final synthetic f$1:Landroid/app/Activity;

.field public final synthetic f$2:Lcom/tgs/aics/diagnose/listener/OnDiagnoseProgressChange;

.field public final synthetic f$3:Lcom/tgs/aics/diagnose/listener/OnDiagnoseFinish;


# direct methods
.method public synthetic constructor <init>(Lcom/tgs/aics/ui/dialog/TipsDialog;Landroid/app/Activity;Lcom/tgs/aics/diagnose/listener/OnDiagnoseProgressChange;Lcom/tgs/aics/diagnose/listener/OnDiagnoseFinish;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tgs/aics/diagnose/AICSDiagnoseManager$$ExternalSyntheticLambda1;->f$0:Lcom/tgs/aics/ui/dialog/TipsDialog;

    iput-object p2, p0, Lcom/tgs/aics/diagnose/AICSDiagnoseManager$$ExternalSyntheticLambda1;->f$1:Landroid/app/Activity;

    iput-object p3, p0, Lcom/tgs/aics/diagnose/AICSDiagnoseManager$$ExternalSyntheticLambda1;->f$2:Lcom/tgs/aics/diagnose/listener/OnDiagnoseProgressChange;

    iput-object p4, p0, Lcom/tgs/aics/diagnose/AICSDiagnoseManager$$ExternalSyntheticLambda1;->f$3:Lcom/tgs/aics/diagnose/listener/OnDiagnoseFinish;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/tgs/aics/diagnose/AICSDiagnoseManager$$ExternalSyntheticLambda1;->f$0:Lcom/tgs/aics/ui/dialog/TipsDialog;

    iget-object v1, p0, Lcom/tgs/aics/diagnose/AICSDiagnoseManager$$ExternalSyntheticLambda1;->f$1:Landroid/app/Activity;

    iget-object v2, p0, Lcom/tgs/aics/diagnose/AICSDiagnoseManager$$ExternalSyntheticLambda1;->f$2:Lcom/tgs/aics/diagnose/listener/OnDiagnoseProgressChange;

    iget-object v3, p0, Lcom/tgs/aics/diagnose/AICSDiagnoseManager$$ExternalSyntheticLambda1;->f$3:Lcom/tgs/aics/diagnose/listener/OnDiagnoseFinish;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/tgs/aics/diagnose/AICSDiagnoseManager;->lambda$start$1(Lcom/tgs/aics/ui/dialog/TipsDialog;Landroid/app/Activity;Lcom/tgs/aics/diagnose/listener/OnDiagnoseProgressChange;Lcom/tgs/aics/diagnose/listener/OnDiagnoseFinish;Landroid/view/View;)V

    return-void
.end method
