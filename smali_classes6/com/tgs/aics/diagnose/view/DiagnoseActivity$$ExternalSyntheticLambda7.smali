.class public final synthetic Lcom/tgs/aics/diagnose/view/DiagnoseActivity$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# instance fields
.field public final synthetic f$0:Lcom/tgs/aics/diagnose/view/DiagnoseActivity;

.field public final synthetic f$1:Landroid/widget/LinearLayout;


# direct methods
.method public synthetic constructor <init>(Lcom/tgs/aics/diagnose/view/DiagnoseActivity;Landroid/widget/LinearLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tgs/aics/diagnose/view/DiagnoseActivity$$ExternalSyntheticLambda7;->f$0:Lcom/tgs/aics/diagnose/view/DiagnoseActivity;

    iput-object p2, p0, Lcom/tgs/aics/diagnose/view/DiagnoseActivity$$ExternalSyntheticLambda7;->f$1:Landroid/widget/LinearLayout;

    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 2

    iget-object v0, p0, Lcom/tgs/aics/diagnose/view/DiagnoseActivity$$ExternalSyntheticLambda7;->f$0:Lcom/tgs/aics/diagnose/view/DiagnoseActivity;

    iget-object v1, p0, Lcom/tgs/aics/diagnose/view/DiagnoseActivity$$ExternalSyntheticLambda7;->f$1:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1, p1, p2}, Lcom/tgs/aics/diagnose/view/DiagnoseActivity;->lambda$initView$3$com-tgs-aics-diagnose-view-DiagnoseActivity(Landroid/widget/LinearLayout;Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1
.end method
