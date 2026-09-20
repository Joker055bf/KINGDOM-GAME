.class public final synthetic Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$SortQuestionnaireRecyclerAdapterViewHolder$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$SortQuestionnaireRecyclerAdapterViewHolder;

.field public final synthetic f$1:Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;


# direct methods
.method public synthetic constructor <init>(Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$SortQuestionnaireRecyclerAdapterViewHolder;Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$SortQuestionnaireRecyclerAdapterViewHolder$$ExternalSyntheticLambda4;->f$0:Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$SortQuestionnaireRecyclerAdapterViewHolder;

    iput-object p2, p0, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$SortQuestionnaireRecyclerAdapterViewHolder$$ExternalSyntheticLambda4;->f$1:Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    iget-object v0, p0, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$SortQuestionnaireRecyclerAdapterViewHolder$$ExternalSyntheticLambda4;->f$0:Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$SortQuestionnaireRecyclerAdapterViewHolder;

    iget-object v1, p0, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$SortQuestionnaireRecyclerAdapterViewHolder$$ExternalSyntheticLambda4;->f$1:Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;

    invoke-virtual {v0, v1, p1, p2}, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$SortQuestionnaireRecyclerAdapterViewHolder;->lambda$setData$4$com-tgs-aics-adapter-SortQuestionnaireRecyclerAdapter$SortQuestionnaireRecyclerAdapterViewHolder(Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;Landroid/widget/CompoundButton;Z)V

    return-void
.end method
