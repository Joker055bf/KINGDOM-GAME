.class public Lcom/applovin/impl/sdk/s$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/impl/sdk/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 810
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/sdk/s$b;->a:Ljava/lang/String;

    iput p2, p0, Lcom/applovin/impl/sdk/s$b;->b:I

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 814
    iget-object v0, p0, Lcom/applovin/impl/sdk/s$b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()I
    .locals 1

    .line 815
    iget v0, p0, Lcom/applovin/impl/sdk/s$b;->b:I

    return v0
.end method
