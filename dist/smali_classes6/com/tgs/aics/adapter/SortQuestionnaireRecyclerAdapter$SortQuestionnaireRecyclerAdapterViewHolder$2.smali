.class Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$SortQuestionnaireRecyclerAdapterViewHolder$2;
.super Ljava/lang/Object;
.source "SortQuestionnaireRecyclerAdapter.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$SortQuestionnaireRecyclerAdapterViewHolder;->setData(Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;Lcom/tgs/aics/bean/questionnaire/SortQuestionBean$SortOptions;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$SortQuestionnaireRecyclerAdapterViewHolder;


# direct methods
.method constructor <init>(Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$SortQuestionnaireRecyclerAdapterViewHolder;)V
    .locals 0

    .line 222
    iput-object p1, p0, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$SortQuestionnaireRecyclerAdapterViewHolder$2;->this$1:Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$SortQuestionnaireRecyclerAdapterViewHolder;

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
