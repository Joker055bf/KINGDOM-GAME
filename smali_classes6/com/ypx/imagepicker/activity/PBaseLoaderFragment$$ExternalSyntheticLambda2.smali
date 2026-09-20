.class public final synthetic Lcom/ypx/imagepicker/activity/PBaseLoaderFragment$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/ypx/imagepicker/data/MediaSetsDataSource$MediaSetProvider;


# instance fields
.field public final synthetic f$0:Lcom/ypx/imagepicker/activity/PBaseLoaderFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/ypx/imagepicker/activity/PBaseLoaderFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ypx/imagepicker/activity/PBaseLoaderFragment$$ExternalSyntheticLambda2;->f$0:Lcom/ypx/imagepicker/activity/PBaseLoaderFragment;

    return-void
.end method


# virtual methods
.method public final providerMediaSets(Ljava/util/ArrayList;)V
    .locals 1

    iget-object v0, p0, Lcom/ypx/imagepicker/activity/PBaseLoaderFragment$$ExternalSyntheticLambda2;->f$0:Lcom/ypx/imagepicker/activity/PBaseLoaderFragment;

    invoke-virtual {v0, p1}, Lcom/ypx/imagepicker/activity/PBaseLoaderFragment;->loadMediaSetsComplete(Ljava/util/List;)V

    return-void
.end method
