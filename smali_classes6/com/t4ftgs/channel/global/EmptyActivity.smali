.class public Lcom/t4ftgs/channel/global/EmptyActivity;
.super Landroid/app/Activity;
.source "EmptyActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onStart()V
    .locals 0

    .line 11
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 12
    invoke-virtual {p0}, Lcom/t4ftgs/channel/global/EmptyActivity;->finish()V

    return-void
.end method
