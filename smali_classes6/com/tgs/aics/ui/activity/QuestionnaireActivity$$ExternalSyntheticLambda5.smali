.class public final synthetic Lcom/tgs/aics/ui/activity/QuestionnaireActivity$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# instance fields
.field public final synthetic f$0:Landroid/widget/LinearLayout;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/LinearLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tgs/aics/ui/activity/QuestionnaireActivity$$ExternalSyntheticLambda5;->f$0:Landroid/widget/LinearLayout;

    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1

    iget-object v0, p0, Lcom/tgs/aics/ui/activity/QuestionnaireActivity$$ExternalSyntheticLambda5;->f$0:Landroid/widget/LinearLayout;

    invoke-static {v0, p1, p2}, Lcom/tgs/aics/ui/activity/QuestionnaireActivity;->lambda$initView$0(Landroid/widget/LinearLayout;Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1
.end method
