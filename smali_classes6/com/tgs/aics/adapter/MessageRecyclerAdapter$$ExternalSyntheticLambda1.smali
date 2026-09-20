.class public final synthetic Lcom/tgs/aics/adapter/MessageRecyclerAdapter$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/text/Html$ImageGetter;


# instance fields
.field public final synthetic f$0:Lcom/tgs/aics/adapter/MessageRecyclerAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/tgs/aics/adapter/MessageRecyclerAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$$ExternalSyntheticLambda1;->f$0:Lcom/tgs/aics/adapter/MessageRecyclerAdapter;

    return-void
.end method


# virtual methods
.method public final getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$$ExternalSyntheticLambda1;->f$0:Lcom/tgs/aics/adapter/MessageRecyclerAdapter;

    invoke-virtual {v0, p1}, Lcom/tgs/aics/adapter/MessageRecyclerAdapter;->lambda$onBindViewHolder$0$com-tgs-aics-adapter-MessageRecyclerAdapter(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method
