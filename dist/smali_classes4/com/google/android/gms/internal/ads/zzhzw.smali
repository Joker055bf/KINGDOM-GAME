.class public abstract Lcom/google/android/gms/internal/ads/zzhzw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-api@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzidc;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/ads/zzhzw<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/ads/zzhzv<",
        "TMessageType;TBuilderType;>;>",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzidc;"
    }
.end annotation


# instance fields
.field protected transient zzq:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzhzw;->zzq:I

    return-void
.end method

.method protected static zzaV(Lcom/google/android/gms/internal/ads/zzian;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzian;->zzi()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Byte string is not UTF-8."

    .line 2
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected static zzaW(Ljava/lang/Iterable;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;",
            "Ljava/util/List<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzhzv;->zzaT(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private zzdU(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v1, v1, 0x12

    add-int/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x2c

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Serializing "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " to a "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " threw an IOException (should never happen)."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public zzaM()Lcom/google/android/gms/internal/ads/zzian;
    .locals 4

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhzw;->zzbr()I

    move-result v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzian;->zza:Lcom/google/android/gms/internal/ads/zzian;

    .line 2
    new-array v1, v0, [B

    .line 3
    sget v2, Lcom/google/android/gms/internal/ads/zziaw;->zzf:I

    .line 4
    new-instance v2, Lcom/google/android/gms/internal/ads/zziat;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3, v0}, Lcom/google/android/gms/internal/ads/zziat;-><init>([BII)V

    .line 5
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/zzhzw;->zzcX(Lcom/google/android/gms/internal/ads/zziaw;)V

    .line 6
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zziaj;->zza(Lcom/google/android/gms/internal/ads/zziaw;[B)Lcom/google/android/gms/internal/ads/zzian;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "ByteString"

    .line 7
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/zzhzw;->zzdU(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public zzaN()[B
    .locals 4

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhzw;->zzbr()I

    move-result v0

    new-array v1, v0, [B

    .line 2
    sget v2, Lcom/google/android/gms/internal/ads/zziaw;->zzf:I

    .line 3
    new-instance v2, Lcom/google/android/gms/internal/ads/zziat;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3, v0}, Lcom/google/android/gms/internal/ads/zziat;-><init>([BII)V

    .line 4
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/zzhzw;->zzcX(Lcom/google/android/gms/internal/ads/zziaw;)V

    .line 5
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zziaw;->zzD()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "byte array"

    .line 6
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/zzhzw;->zzdU(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public zzaO(Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhzw;->zzbr()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zziaw;->zzz(I)I

    move-result v0

    .line 2
    new-instance v1, Lcom/google/android/gms/internal/ads/zziav;

    invoke-direct {v1, p1, v0}, Lcom/google/android/gms/internal/ads/zziav;-><init>(Ljava/io/OutputStream;I)V

    .line 3
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzhzw;->zzcX(Lcom/google/android/gms/internal/ads/zziaw;)V

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zziaw;->zzy()V

    return-void
.end method

.method public zzaP(Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhzw;->zzbr()I

    move-result v0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zziaw;->zzA(I)I

    move-result v1

    add-int/2addr v1, v0

    .line 3
    new-instance v2, Lcom/google/android/gms/internal/ads/zziav;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zziaw;->zzz(I)I

    move-result v1

    invoke-direct {v2, p1, v1}, Lcom/google/android/gms/internal/ads/zziav;-><init>(Ljava/io/OutputStream;I)V

    .line 4
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zziaw;->zzs(I)V

    .line 5
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/zzhzw;->zzcX(Lcom/google/android/gms/internal/ads/zziaw;)V

    .line 6
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zziaw;->zzy()V

    return-void
.end method

.method zzaQ()I
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method zzaR(I)V
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public zzaS()Lcom/google/android/gms/internal/ads/zzidh;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "mutableCopy() is not implemented."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method zzaT(Lcom/google/android/gms/internal/ads/zzidu;)I
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhzw;->zzaQ()I

    move-result p1

    return p1
.end method

.method zzaU()Lcom/google/android/gms/internal/ads/zziee;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zziee;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zziee;-><init>(Lcom/google/android/gms/internal/ads/zzidc;)V

    return-object v0
.end method
