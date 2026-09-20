.class public final synthetic Lcom/onevcat/uniwebview/d$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/webkit/ValueCallback;


# instance fields
.field public final synthetic f$0:Lcom/onevcat/uniwebview/d;


# direct methods
.method public synthetic constructor <init>(Lcom/onevcat/uniwebview/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onevcat/uniwebview/d$$ExternalSyntheticLambda0;->f$0:Lcom/onevcat/uniwebview/d;

    return-void
.end method


# virtual methods
.method public final onReceiveValue(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/onevcat/uniwebview/d$$ExternalSyntheticLambda0;->f$0:Lcom/onevcat/uniwebview/d;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/onevcat/uniwebview/d;->a(Lcom/onevcat/uniwebview/d;Ljava/lang/String;)V

    return-void
.end method
