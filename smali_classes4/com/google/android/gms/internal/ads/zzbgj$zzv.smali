.class public final Lcom/google/android/gms/internal/ads/zzbgj$zzv;
.super Lcom/google/android/gms/internal/ads/zzibr;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbgj$zzw;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzibr<",
        "Lcom/google/android/gms/internal/ads/zzbgj$zzv;",
        "Lcom/google/android/gms/internal/ads/zzbgj$zzv$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzbgj$zzw;"
    }
.end annotation


# static fields
.field public static final zza:I = 0x1

.field public static final zzb:I = 0x2

.field public static final zzc:I = 0x3

.field public static final zzd:I = 0x4

.field private static final zzj:Lcom/google/android/gms/internal/ads/zzbgj$zzv;

.field private static volatile zzk:Lcom/google/android/gms/internal/ads/zzidk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzidk<",
            "Lcom/google/android/gms/internal/ads/zzbgj$zzv;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zze:I

.field private zzf:Ljava/lang/String;

.field private zzg:I

.field private zzh:Lcom/google/android/gms/internal/ads/zzibz;

.field private zzi:Lcom/google/android/gms/internal/ads/zzbgj$zzap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbgj$zzv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbgj$zzv;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbgj$zzv;->zzj:Lcom/google/android/gms/internal/ads/zzbgj$zzv;

    const-class v1, Lcom/google/android/gms/internal/ads/zzbgj$zzv;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzibr;->zzbu(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzibr;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzibr;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzv;->zzf:Ljava/lang/String;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbgj$zzv;->zzbC()Lcom/google/android/gms/internal/ads/zzibz;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzv;->zzh:Lcom/google/android/gms/internal/ads/zzibz;

    return-void
.end method

.method public static zzA()Lcom/google/android/gms/internal/ads/zzidk;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzidk<",
            "Lcom/google/android/gms/internal/ads/zzbgj$zzv;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbgj$zzv;->zzj:Lcom/google/android/gms/internal/ads/zzbgj$zzv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzibr;->zzbd()Lcom/google/android/gms/internal/ads/zzidk;

    move-result-object v0

    return-object v0
.end method

.method static synthetic zzN()Lcom/google/android/gms/internal/ads/zzbgj$zzv;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbgj$zzv;->zzj:Lcom/google/android/gms/internal/ads/zzbgj$zzv;

    return-object v0
.end method

.method private zzO(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzv;->zze:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzv;->zze:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzv;->zzf:Ljava/lang/String;

    return-void
.end method

.method private zzP()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzv;->zze:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzv;->zze:I

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbgj$zzv;->zzz()Lcom/google/android/gms/internal/ads/zzbgj$zzv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbgj$zzv;->zzb()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzv;->zzf:Ljava/lang/String;

    return-void
.end method

.method private zzQ(Lcom/google/android/gms/internal/ads/zzian;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzian;->zzz()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzv;->zzf:Ljava/lang/String;

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzv;->zze:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzv;->zze:I

    return-void
.end method

.method private zzR(Lcom/google/android/gms/internal/ads/zzbgj$zzq;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbgj$zzq;->zza()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzv;->zzg:I

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzv;->zze:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzv;->zze:I

    return-void
.end method

.method private zzS()V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzv;->zze:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzv;->zze:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzv;->zzg:I

    return-void
.end method

.method private zzT()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzv;->zzh:Lcom/google/android/gms/internal/ads/zzibz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzibz;->zza()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzibr;->zzbD(Lcom/google/android/gms/internal/ads/zzibz;)Lcom/google/android/gms/internal/ads/zzibz;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzv;->zzh:Lcom/google/android/gms/internal/ads/zzibz;

    :cond_0
    return-void
.end method

.method private zzU(II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbgj$zzv;->zzT()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzv;->zzh:Lcom/google/android/gms/internal/ads/zzibz;

    .line 2
    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzibz;->zzg(II)I

    return-void
.end method

.method private zzV(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbgj$zzv;->zzT()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzv;->zzh:Lcom/google/android/gms/internal/ads/zzibz;

    .line 2
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzibz;->zzi(I)V

    return-void
.end method

.method private zzW(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbgj$zzv;->zzT()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzv;->zzh:Lcom/google/android/gms/internal/ads/zzibz;

    .line 2
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzhzw;->zzaW(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private zzX()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbgj$zzv;->zzbC()Lcom/google/android/gms/internal/ads/zzibz;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzv;->zzh:Lcom/google/android/gms/internal/ads/zzibz;

    return-void
.end method

.method private zzY(Lcom/google/android/gms/internal/ads/zzbgj$zzap;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzv;->zzi:Lcom/google/android/gms/internal/ads/zzbgj$zzap;

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzv;->zze:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzv;->zze:I

    return-void
.end method

.method private zzZ(Lcom/google/android/gms/internal/ads/zzbgj$zzap;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzv;->zzi:Lcom/google/android/gms/internal/ads/zzbgj$zzap;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbgj$zzap;->zzs()Lcom/google/android/gms/internal/ads/zzbgj$zzap;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbgj$zzap;->zzr(Lcom/google/android/gms/internal/ads/zzbgj$zzap;)Lcom/google/android/gms/internal/ads/zzbgj$zzap$zza;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzibl;->zzbo(Lcom/google/android/gms/internal/ads/zzibr;)Lcom/google/android/gms/internal/ads/zzibl;

    move-object p1, v0

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbgj$zzap$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzibl;->zzbl()Lcom/google/android/gms/internal/ads/zzibr;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbgj$zzap;

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzv;->zzi:Lcom/google/android/gms/internal/ads/zzbgj$zzap;

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzv;->zze:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzv;->zze:I

    return-void
.end method

.method private zzaa()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzv;->zzi:Lcom/google/android/gms/internal/ads/zzbgj$zzap;

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzv;->zze:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzv;->zze:I

    return-void
.end method

.method public static zzd(Ljava/nio/ByteBuffer;)Lcom/google/android/gms/internal/ads/zzbgj$zzv;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzicg;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbgj$zzv;->zzj:Lcom/google/android/gms/internal/ads/zzbgj$zzv;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzibr;->zzbR(Lcom/google/android/gms/internal/ads/zzibr;Ljava/nio/ByteBuffer;)Lcom/google/android/gms/internal/ads/zzibr;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbgj$zzv;

    return-object p0
.end method

.method public static zze(Ljava/nio/ByteBuffer;Lcom/google/android/gms/internal/ads/zzibb;)Lcom/google/android/gms/internal/ads/zzbgj$zzv;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzicg;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbgj$zzv;->zzj:Lcom/google/android/gms/internal/ads/zzbgj$zzv;

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzibr;->zzbQ(Lcom/google/android/gms/internal/ads/zzibr;Ljava/nio/ByteBuffer;Lcom/google/android/gms/internal/ads/zzibb;)Lcom/google/android/gms/internal/ads/zzibr;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbgj$zzv;

    return-object p0
.end method

.method public static zzi(Lcom/google/android/gms/internal/ads/zzian;)Lcom/google/android/gms/internal/ads/zzbgj$zzv;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzicg;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbgj$zzv;->zzj:Lcom/google/android/gms/internal/ads/zzbgj$zzv;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzibr;->zzbS(Lcom/google/android/gms/internal/ads/zzibr;Lcom/google/android/gms/internal/ads/zzian;)Lcom/google/android/gms/internal/ads/zzibr;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbgj$zzv;

    return-object p0
.end method

.method public static zzj(Lcom/google/android/gms/internal/ads/zzian;Lcom/google/android/gms/internal/ads/zzibb;)Lcom/google/android/gms/internal/ads/zzbgj$zzv;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzicg;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbgj$zzv;->zzj:Lcom/google/android/gms/internal/ads/zzbgj$zzv;

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzibr;->zzbT(Lcom/google/android/gms/internal/ads/zzibr;Lcom/google/android/gms/internal/ads/zzian;Lcom/google/android/gms/internal/ads/zzibb;)Lcom/google/android/gms/internal/ads/zzibr;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbgj$zzv;

    return-object p0
.end method

.method public static zzn([B)Lcom/google/android/gms/internal/ads/zzbgj$zzv;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzicg;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbgj$zzv;->zzj:Lcom/google/android/gms/internal/ads/zzbgj$zzv;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzibr;->zzbU(Lcom/google/android/gms/internal/ads/zzibr;[B)Lcom/google/android/gms/internal/ads/zzibr;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbgj$zzv;

    return-object p0
.end method

.method public static zzo([BLcom/google/android/gms/internal/ads/zzibb;)Lcom/google/android/gms/internal/ads/zzbgj$zzv;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzicg;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbgj$zzv;->zzj:Lcom/google/android/gms/internal/ads/zzbgj$zzv;

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzibr;->zzbV(Lcom/google/android/gms/internal/ads/zzibr;[BLcom/google/android/gms/internal/ads/zzibb;)Lcom/google/android/gms/internal/ads/zzibr;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbgj$zzv;

    return-object p0
.end method

.method public static zzp(Ljava/io/InputStream;)Lcom/google/android/gms/internal/ads/zzbgj$zzv;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbgj$zzv;->zzj:Lcom/google/android/gms/internal/ads/zzbgj$zzv;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzibr;->zzbW(Lcom/google/android/gms/internal/ads/zzibr;Ljava/io/InputStream;)Lcom/google/android/gms/internal/ads/zzibr;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbgj$zzv;

    return-object p0
.end method

.method public static zzq(Ljava/io/InputStream;Lcom/google/android/gms/internal/ads/zzibb;)Lcom/google/android/gms/internal/ads/zzbgj$zzv;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbgj$zzv;->zzj:Lcom/google/android/gms/internal/ads/zzbgj$zzv;

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzibr;->zzbX(Lcom/google/android/gms/internal/ads/zzibr;Ljava/io/InputStream;Lcom/google/android/gms/internal/ads/zzibb;)Lcom/google/android/gms/internal/ads/zzibr;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbgj$zzv;

    return-object p0
.end method

.method public static zzt(Ljava/io/InputStream;)Lcom/google/android/gms/internal/ads/zzbgj$zzv;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbgj$zzv;->zzj:Lcom/google/android/gms/internal/ads/zzbgj$zzv;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzbgj$zzv;->zzca(Lcom/google/android/gms/internal/ads/zzibr;Ljava/io/InputStream;)Lcom/google/android/gms/internal/ads/zzibr;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbgj$zzv;

    return-object p0
.end method

.method public static zzu(Ljava/io/InputStream;Lcom/google/android/gms/internal/ads/zzibb;)Lcom/google/android/gms/internal/ads/zzbgj$zzv;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbgj$zzv;->zzj:Lcom/google/android/gms/internal/ads/zzbgj$zzv;

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzbgj$zzv;->zzcb(Lcom/google/android/gms/internal/ads/zzibr;Ljava/io/InputStream;Lcom/google/android/gms/internal/ads/zzibb;)Lcom/google/android/gms/internal/ads/zzibr;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbgj$zzv;

    return-object p0
.end method

.method public static zzv(Lcom/google/android/gms/internal/ads/zziaq;)Lcom/google/android/gms/internal/ads/zzbgj$zzv;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbgj$zzv;->zzj:Lcom/google/android/gms/internal/ads/zzbgj$zzv;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzibr;->zzbY(Lcom/google/android/gms/internal/ads/zzibr;Lcom/google/android/gms/internal/ads/zziaq;)Lcom/google/android/gms/internal/ads/zzibr;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbgj$zzv;

    return-object p0
.end method

.method public static zzw(Lcom/google/android/gms/internal/ads/zziaq;Lcom/google/android/gms/internal/ads/zzibb;)Lcom/google/android/gms/internal/ads/zzbgj$zzv;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbgj$zzv;->zzj:Lcom/google/android/gms/internal/ads/zzbgj$zzv;

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzibr;->zzbZ(Lcom/google/android/gms/internal/ads/zzibr;Lcom/google/android/gms/internal/ads/zziaq;Lcom/google/android/gms/internal/ads/zzibb;)Lcom/google/android/gms/internal/ads/zzibr;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbgj$zzv;

    return-object p0
.end method

.method public static zzx()Lcom/google/android/gms/internal/ads/zzbgj$zzv$zza;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbgj$zzv;->zzj:Lcom/google/android/gms/internal/ads/zzbgj$zzv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzibr;->zzbn()Lcom/google/android/gms/internal/ads/zzibl;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbgj$zzv$zza;

    return-object v0
.end method

.method public static zzy(Lcom/google/android/gms/internal/ads/zzbgj$zzv;)Lcom/google/android/gms/internal/ads/zzbgj$zzv$zza;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbgj$zzv;->zzj:Lcom/google/android/gms/internal/ads/zzbgj$zzv;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzibr;->zzbo(Lcom/google/android/gms/internal/ads/zzibr;)Lcom/google/android/gms/internal/ads/zzibl;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbgj$zzv$zza;

    return-object p0
.end method

.method public static zzz()Lcom/google/android/gms/internal/ads/zzbgj$zzv;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbgj$zzv;->zzj:Lcom/google/android/gms/internal/ads/zzbgj$zzv;

    return-object v0
.end method


# virtual methods
.method final synthetic zzB(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbgj$zzv;->zzO(Ljava/lang/String;)V

    return-void
.end method

.method final synthetic zzC()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbgj$zzv;->zzP()V

    return-void
.end method

.method final synthetic zzD(Lcom/google/android/gms/internal/ads/zzian;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbgj$zzv;->zzQ(Lcom/google/android/gms/internal/ads/zzian;)V

    return-void
.end method

.method final synthetic zzE(Lcom/google/android/gms/internal/ads/zzbgj$zzq;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbgj$zzv;->zzR(Lcom/google/android/gms/internal/ads/zzbgj$zzq;)V

    return-void
.end method

.method final synthetic zzF()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbgj$zzv;->zzS()V

    return-void
.end method

.method final synthetic zzG(II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbgj$zzv;->zzU(II)V

    return-void
.end method

.method final synthetic zzH(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbgj$zzv;->zzV(I)V

    return-void
.end method

.method final synthetic zzI(Ljava/lang/Iterable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbgj$zzv;->zzW(Ljava/lang/Iterable;)V

    return-void
.end method

.method final synthetic zzJ()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbgj$zzv;->zzX()V

    return-void
.end method

.method final synthetic zzK(Lcom/google/android/gms/internal/ads/zzbgj$zzap;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbgj$zzv;->zzY(Lcom/google/android/gms/internal/ads/zzbgj$zzap;)V

    return-void
.end method

.method final synthetic zzL(Lcom/google/android/gms/internal/ads/zzbgj$zzap;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbgj$zzv;->zzZ(Lcom/google/android/gms/internal/ads/zzbgj$zzap;)V

    return-void
.end method

.method final synthetic zzM()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbgj$zzv;->zzaa()V

    return-void
.end method

.method public zza()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzv;->zze:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public zzb()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzv;->zzf:Ljava/lang/String;

    return-object v0
.end method

.method public zzc()Lcom/google/android/gms/internal/ads/zzian;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzv;->zzf:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzian;->zzv(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzian;

    move-result-object v0

    return-object v0
.end method

.method protected final zzdc(Lcom/google/android/gms/internal/ads/zzibq;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzibq;->ordinal()I

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_7

    const/4 p3, 0x6

    const/4 v0, 0x5

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    if-eq p1, v3, :cond_6

    if-eq p1, v2, :cond_5

    const/4 p2, 0x0

    if-eq p1, v1, :cond_4

    if-eq p1, v0, :cond_3

    if-ne p1, p3, :cond_2

    sget-object p1, Lcom/google/android/gms/internal/ads/zzbgj$zzv;->zzk:Lcom/google/android/gms/internal/ads/zzidk;

    if-nez p1, :cond_1

    const-class p2, Lcom/google/android/gms/internal/ads/zzbgj$zzv;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbgj$zzv;->zzk:Lcom/google/android/gms/internal/ads/zzidk;

    if-nez p1, :cond_0

    .line 3
    new-instance p1, Lcom/google/android/gms/internal/ads/zzibm;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzbgj$zzv;->zzj:Lcom/google/android/gms/internal/ads/zzbgj$zzv;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzibm;-><init>(Lcom/google/android/gms/internal/ads/zzibr;)V

    sput-object p1, Lcom/google/android/gms/internal/ads/zzbgj$zzv;->zzk:Lcom/google/android/gms/internal/ads/zzidk;

    .line 4
    :cond_0
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-object p1

    .line 9
    :cond_2
    throw p2

    .line 2
    :cond_3
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbgj$zzv;->zzj:Lcom/google/android/gms/internal/ads/zzbgj$zzv;

    return-object p1

    .line 6
    :cond_4
    new-instance p1, Lcom/google/android/gms/internal/ads/zzbgj$zzv$zza;

    .line 7
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzbgj$zzv$zza;-><init>([B)V

    return-object p1

    :cond_5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzbgj$zzv;

    .line 8
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzbgj$zzv;-><init>()V

    return-object p1

    :cond_6
    const-string p1, "zze"

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, p3, v4

    const-string p1, "zzf"

    aput-object p1, p3, p2

    const-string p1, "zzg"

    aput-object p1, p3, v3

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbgj$zzq;->zze()Lcom/google/android/gms/internal/ads/zzibx;

    move-result-object p1

    aput-object p1, p3, v2

    const-string p1, "zzh"

    aput-object p1, p3, v1

    const-string p1, "zzi"

    aput-object p1, p3, v0

    sget-object p1, Lcom/google/android/gms/internal/ads/zzbgj$zzv;->zzj:Lcom/google/android/gms/internal/ads/zzbgj$zzv;

    const-string p2, "\u0004\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0001\u0000\u0001\u1008\u0000\u0002\u180c\u0001\u0003\u0016\u0004\u1009\u0002"

    .line 6
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzbgj$zzv;->zzbv(Lcom/google/android/gms/internal/ads/zzidc;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 2
    :cond_7
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public zzg()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzv;->zze:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public zzh()Lcom/google/android/gms/internal/ads/zzbgj$zzq;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzv;->zzg:I

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbgj$zzq;->zzc(I)Lcom/google/android/gms/internal/ads/zzbgj$zzq;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbgj$zzq;->zza:Lcom/google/android/gms/internal/ads/zzbgj$zzq;

    :cond_0
    return-object v0
.end method

.method public zzk()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzv;->zzh:Lcom/google/android/gms/internal/ads/zzibz;

    return-object v0
.end method

.method public zzl()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzv;->zzh:Lcom/google/android/gms/internal/ads/zzibz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzibz;->size()I

    move-result v0

    return v0
.end method

.method public zzm(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzv;->zzh:Lcom/google/android/gms/internal/ads/zzibz;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzibz;->zzf(I)I

    move-result p1

    return p1
.end method

.method public zzr()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzv;->zze:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public zzs()Lcom/google/android/gms/internal/ads/zzbgj$zzap;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzv;->zzi:Lcom/google/android/gms/internal/ads/zzbgj$zzap;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbgj$zzap;->zzs()Lcom/google/android/gms/internal/ads/zzbgj$zzap;

    move-result-object v0

    :cond_0
    return-object v0
.end method
