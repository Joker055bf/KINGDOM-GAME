.class public Lcom/tgs/aics/thirdtool/htmlspanner/spans/CenterSpan;
.super Ljava/lang/Object;
.source "CenterSpan.java"

# interfaces
.implements Landroid/text/style/AlignmentSpan;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlignment()Landroid/text/Layout$Alignment;
    .locals 1

    .line 26
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    return-object v0
.end method
