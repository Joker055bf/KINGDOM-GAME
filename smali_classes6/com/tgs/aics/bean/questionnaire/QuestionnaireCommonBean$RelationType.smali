.class public Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$RelationType;
.super Ljava/lang/Object;
.source "QuestionnaireCommonBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RelationType"
.end annotation


# static fields
.field public static all:Ljava/lang/String; = "all"

.field public static incomplete:Ljava/lang/String; = "incomplete"

.field public static none:Ljava/lang/String; = "none"

.field public static some:Ljava/lang/String; = "some"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 413
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
