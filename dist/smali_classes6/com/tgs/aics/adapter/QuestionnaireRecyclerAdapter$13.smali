.class Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$13;
.super Ljava/lang/Object;
.source "QuestionnaireRecyclerAdapter.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->checkboxTypeInitView(Landroid/view/View;Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$CheckBoxOptions;Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;


# direct methods
.method constructor <init>(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;)V
    .locals 0

    .line 3661
    iput-object p1, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$13;->this$0:Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
