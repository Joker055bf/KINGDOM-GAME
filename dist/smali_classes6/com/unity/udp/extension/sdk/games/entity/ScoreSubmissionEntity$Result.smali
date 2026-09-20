.class public final Lcom/unity/udp/extension/sdk/games/entity/ScoreSubmissionEntity$Result;
.super Ljava/lang/Object;
.source "ScoreSubmissionEntity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity/udp/extension/sdk/games/entity/ScoreSubmissionEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Result"
.end annotation


# instance fields
.field public final formattedScore:Ljava/lang/String;

.field public final isBest:Z

.field public final rawScore:J

.field public final scoreTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-wide p1, p0, Lcom/unity/udp/extension/sdk/games/entity/ScoreSubmissionEntity$Result;->rawScore:J

    .line 45
    iput-object p3, p0, Lcom/unity/udp/extension/sdk/games/entity/ScoreSubmissionEntity$Result;->formattedScore:Ljava/lang/String;

    .line 46
    iput-object p4, p0, Lcom/unity/udp/extension/sdk/games/entity/ScoreSubmissionEntity$Result;->scoreTag:Ljava/lang/String;

    .line 47
    iput-boolean p5, p0, Lcom/unity/udp/extension/sdk/games/entity/ScoreSubmissionEntity$Result;->isBest:Z

    return-void
.end method
