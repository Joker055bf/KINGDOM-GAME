.class public Lcom/discord/socialsdk/AuthenticationClientCallback;
.super Ljava/lang/Object;
.source "AuthenticationClientCallback.java"


# instance fields
.field private nativeContext:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-wide p1, p0, Lcom/discord/socialsdk/AuthenticationClientCallback;->nativeContext:J

    return-void
.end method

.method private native onAuthorizationComplete(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method


# virtual methods
.method protected finalize()V
    .locals 2

    .line 22
    iget-wide v0, p0, Lcom/discord/socialsdk/AuthenticationClientCallback;->nativeContext:J

    invoke-virtual {p0, v0, v1}, Lcom/discord/socialsdk/AuthenticationClientCallback;->nativeFinalize(J)V

    return-void
.end method

.method protected native nativeFinalize(J)V
.end method

.method public onAuthorizationComplete(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 14
    iget-wide v1, p0, Lcom/discord/socialsdk/AuthenticationClientCallback;->nativeContext:J

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/discord/socialsdk/AuthenticationClientCallback;->onAuthorizationComplete(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
