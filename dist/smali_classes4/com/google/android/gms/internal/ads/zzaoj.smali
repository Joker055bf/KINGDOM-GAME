.class public final Lcom/google/android/gms/internal/ads/zzaoj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaon;


# static fields
.field private static final zza:[B


# instance fields
.field private final zzb:Z

.field private final zzc:Lcom/google/android/gms/internal/ads/zzeq;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzer;

.field private final zze:Ljava/lang/String;

.field private final zzf:I

.field private final zzg:Ljava/lang/String;

.field private zzh:Ljava/lang/String;

.field private zzi:Lcom/google/android/gms/internal/ads/zzagh;

.field private zzj:Lcom/google/android/gms/internal/ads/zzagh;

.field private zzk:I

.field private zzl:I

.field private zzm:I

.field private zzn:Z

.field private zzo:Z

.field private zzp:I

.field private zzq:I

.field private zzr:I

.field private zzs:Z

.field private zzt:J

.field private zzu:I

.field private zzv:J

.field private zzw:Lcom/google/android/gms/internal/ads/zzagh;

.field private zzx:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzaoj;->zza:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x49t
        0x44t
        0x33t
    .end array-data
.end method

.method public constructor <init>(ZLjava/lang/String;ILjava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzeq;

    const/4 v1, 0x7

    new-array v2, v1, [B

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzeq;-><init>([BI)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaoj;->zzc:Lcom/google/android/gms/internal/ads/zzeq;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzer;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzaoj;->zza:[B

    const/16 v2, 0xa

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzer;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaoj;->zzd:Lcom/google/android/gms/internal/ads/zzer;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaoj;->zzp:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaoj;->zzq:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaoj;->zzt:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaoj;->zzv:J

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzaoj;->zzb:Z

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaoj;->zze:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzaoj;->zzf:I

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzaoj;->zzg:Ljava/lang/String;

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaoj;->zzi()V

    return-void
.end method

.method public static zzf(I)Z
    .locals 1

    const v0, 0xfff6

    and-int/2addr p0, v0

    const v0, 0xfff0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private final zzg()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaoj;->zzo:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaoj;->zzi()V

    return-void
.end method

.method private final zzh(Lcom/google/android/gms/internal/ads/zzer;[BI)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzer;->zzd()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzaoj;->zzl:I

    sub-int v1, p3, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzaoj;->zzl:I

    .line 2
    invoke-virtual {p1, p2, v1, v0}, Lcom/google/android/gms/internal/ads/zzer;->zzm([BII)V

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzaoj;->zzl:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaoj;->zzl:I

    if-ne p1, p3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private final zzi()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaoj;->zzk:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaoj;->zzl:I

    const/16 v0, 0x100

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaoj;->zzm:I

    return-void
.end method

.method private final zzj(Lcom/google/android/gms/internal/ads/zzagh;JII)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaoj;->zzk:I

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzaoj;->zzl:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaoj;->zzw:Lcom/google/android/gms/internal/ads/zzagh;

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzaoj;->zzx:J

    iput p5, p0, Lcom/google/android/gms/internal/ads/zzaoj;->zzu:I

    return-void
.end method

.method private final zzk()V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaoj;->zzk:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaoj;->zzl:I

    return-void
.end method

.method private static final zzl(BB)Z
    .locals 0

    and-int/lit16 p0, p1, 0xff

    const p1, 0xff00

    or-int/2addr p0, p1

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzaoj;->zzf(I)Z

    move-result p0

    return p0
.end method

.method private static final zzm(Lcom/google/android/gms/internal/ads/zzer;[BI)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzer;->zzd()I

    move-result v0

    const/4 v1, 0x0

    if-ge v0, p2, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p0, p1, v1, p2}, Lcom/google/android/gms/internal/ads/zzer;->zzm([BII)V

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final zza()V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 1
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaoj;->zzv:J

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaoj;->zzg()V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzaex;Lcom/google/android/gms/internal/ads/zzaqb;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaqb;->zza()V

    .line 2
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaqb;->zzc()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaoj;->zzh:Ljava/lang/String;

    .line 3
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaqb;->zzb()I

    move-result v0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzaex;->zzu(II)Lcom/google/android/gms/internal/ads/zzagh;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaoj;->zzi:Lcom/google/android/gms/internal/ads/zzagh;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaoj;->zzw:Lcom/google/android/gms/internal/ads/zzagh;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaoj;->zzb:Z

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaqb;->zza()V

    .line 5
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaqb;->zzb()I

    move-result v0

    const/4 v1, 0x5

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzaex;->zzu(II)Lcom/google/android/gms/internal/ads/zzagh;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaoj;->zzj:Lcom/google/android/gms/internal/ads/zzagh;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzt;

    .line 6
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzt;-><init>()V

    .line 7
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaqb;->zzc()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzt;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzt;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzaoj;->zzg:Ljava/lang/String;

    .line 8
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzt;->zzl(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzt;

    const-string p2, "application/id3"

    .line 9
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzt;->zzm(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzt;

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzt;->zzM()Lcom/google/android/gms/internal/ads/zzv;

    move-result-object p2

    .line 6
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzagh;->zzz(Lcom/google/android/gms/internal/ads/zzv;)V

    return-void

    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/ads/zzaer;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzaer;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaoj;->zzj:Lcom/google/android/gms/internal/ads/zzagh;

    return-void
.end method

.method public final zzc(JI)V
    .locals 0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzaoj;->zzv:J

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzer;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzat;
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    .line 1
    iget-object v0, v6, Lcom/google/android/gms/internal/ads/zzaoj;->zzi:Lcom/google/android/gms/internal/ads/zzagh;

    .line 65
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfj;->zza:Ljava/lang/String;

    .line 2
    :cond_0
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzer;->zzd()I

    move-result v0

    if-lez v0, :cond_1b

    iget v0, v6, Lcom/google/android/gms/internal/ads/zzaoj;->zzk:I

    const/16 v1, 0xd

    const/4 v2, 0x7

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-eqz v0, :cond_b

    if-eq v0, v10, :cond_8

    const/16 v5, 0xa

    if-eq v0, v9, :cond_7

    if-eq v0, v4, :cond_2

    .line 30
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzer;->zzd()I

    move-result v0

    iget v1, v6, Lcom/google/android/gms/internal/ads/zzaoj;->zzu:I

    iget v2, v6, Lcom/google/android/gms/internal/ads/zzaoj;->zzl:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, v6, Lcom/google/android/gms/internal/ads/zzaoj;->zzw:Lcom/google/android/gms/internal/ads/zzagh;

    .line 31
    invoke-interface {v1, v7, v0}, Lcom/google/android/gms/internal/ads/zzagh;->zzc(Lcom/google/android/gms/internal/ads/zzer;I)V

    iget v1, v6, Lcom/google/android/gms/internal/ads/zzaoj;->zzl:I

    add-int/2addr v1, v0

    iput v1, v6, Lcom/google/android/gms/internal/ads/zzaoj;->zzl:I

    iget v0, v6, Lcom/google/android/gms/internal/ads/zzaoj;->zzu:I

    if-ne v1, v0, :cond_0

    iget-wide v0, v6, Lcom/google/android/gms/internal/ads/zzaoj;->zzv:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    move v8, v10

    .line 32
    :cond_1
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzgrc;->zzi(Z)V

    iget-object v9, v6, Lcom/google/android/gms/internal/ads/zzaoj;->zzw:Lcom/google/android/gms/internal/ads/zzagh;

    iget-wide v10, v6, Lcom/google/android/gms/internal/ads/zzaoj;->zzv:J

    const/4 v12, 0x1

    iget v13, v6, Lcom/google/android/gms/internal/ads/zzaoj;->zzu:I

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 33
    invoke-interface/range {v9 .. v15}, Lcom/google/android/gms/internal/ads/zzagh;->zze(JIIILcom/google/android/gms/internal/ads/zzagg;)V

    iget-wide v0, v6, Lcom/google/android/gms/internal/ads/zzaoj;->zzv:J

    iget-wide v2, v6, Lcom/google/android/gms/internal/ads/zzaoj;->zzx:J

    add-long/2addr v0, v2

    iput-wide v0, v6, Lcom/google/android/gms/internal/ads/zzaoj;->zzv:J

    .line 34
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzaoj;->zzi()V

    goto :goto_0

    .line 64
    :cond_2
    iget-boolean v0, v6, Lcom/google/android/gms/internal/ads/zzaoj;->zzn:Z

    const/4 v11, 0x5

    if-eq v10, v0, :cond_3

    move v0, v11

    goto :goto_1

    :cond_3
    move v0, v2

    :goto_1
    iget-object v12, v6, Lcom/google/android/gms/internal/ads/zzaoj;->zzc:Lcom/google/android/gms/internal/ads/zzeq;

    iget-object v13, v12, Lcom/google/android/gms/internal/ads/zzeq;->zza:[B

    .line 35
    invoke-direct {v6, v7, v13, v0}, Lcom/google/android/gms/internal/ads/zzaoj;->zzh(Lcom/google/android/gms/internal/ads/zzer;[BI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    invoke-virtual {v12, v8}, Lcom/google/android/gms/internal/ads/zzeq;->zzf(I)V

    iget-boolean v0, v6, Lcom/google/android/gms/internal/ads/zzaoj;->zzs:Z

    if-nez v0, :cond_5

    .line 37
    invoke-virtual {v12, v9}, Lcom/google/android/gms/internal/ads/zzeq;->zzj(I)I

    move-result v0

    add-int/2addr v0, v10

    if-eq v0, v9, :cond_4

    .line 38
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    new-instance v13, Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x32

    invoke-direct {v13, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Detected audio object type: "

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", but assuming AAC LC."

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "AdtsReader"

    invoke-static {v5, v0}, Lcom/google/android/gms/internal/ads/zzee;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    :cond_4
    invoke-virtual {v12, v11}, Lcom/google/android/gms/internal/ads/zzeq;->zzh(I)V

    .line 40
    invoke-virtual {v12, v4}, Lcom/google/android/gms/internal/ads/zzeq;->zzj(I)I

    move-result v0

    iget v5, v6, Lcom/google/android/gms/internal/ads/zzaoj;->zzq:I

    .line 41
    sget v11, Lcom/google/android/gms/internal/ads/zzadt;->zza:I

    shr-int/lit8 v11, v5, 0x1

    and-int/2addr v11, v2

    new-array v9, v9, [B

    or-int/lit8 v11, v11, 0x10

    int-to-byte v11, v11

    aput-byte v11, v9, v8

    shl-int/lit8 v2, v5, 0x7

    shl-int/2addr v0, v4

    and-int/lit16 v2, v2, 0x80

    and-int/lit8 v0, v0, 0x78

    or-int/2addr v0, v2

    int-to-byte v0, v0

    aput-byte v0, v9, v10

    .line 42
    invoke-static {v9}, Lcom/google/android/gms/internal/ads/zzadt;->zza([B)Lcom/google/android/gms/internal/ads/zzads;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/internal/ads/zzt;

    .line 43
    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzt;-><init>()V

    iget-object v4, v6, Lcom/google/android/gms/internal/ads/zzaoj;->zzh:Ljava/lang/String;

    .line 44
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzt;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzt;

    iget-object v4, v6, Lcom/google/android/gms/internal/ads/zzaoj;->zzg:Ljava/lang/String;

    .line 45
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzt;->zzl(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzt;

    const-string v4, "audio/mp4a-latm"

    .line 46
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzt;->zzm(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzt;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzads;->zzc:Ljava/lang/String;

    .line 47
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzt;->zzj(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzt;

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzads;->zzb:I

    .line 48
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzt;->zzE(I)Lcom/google/android/gms/internal/ads/zzt;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzads;->zza:I

    .line 49
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzt;->zzF(I)Lcom/google/android/gms/internal/ads/zzt;

    .line 50
    invoke-static {v9}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzt;->zzp(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzt;

    iget-object v0, v6, Lcom/google/android/gms/internal/ads/zzaoj;->zze:Ljava/lang/String;

    .line 51
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzt;->zze(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzt;

    iget v0, v6, Lcom/google/android/gms/internal/ads/zzaoj;->zzf:I

    .line 52
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzt;->zzg(I)Lcom/google/android/gms/internal/ads/zzt;

    .line 53
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzt;->zzM()Lcom/google/android/gms/internal/ads/zzv;

    move-result-object v0

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzv;->zzH:I

    int-to-long v4, v2

    const-wide/32 v8, 0x3d090000

    .line 54
    div-long/2addr v8, v4

    iput-wide v8, v6, Lcom/google/android/gms/internal/ads/zzaoj;->zzt:J

    iget-object v2, v6, Lcom/google/android/gms/internal/ads/zzaoj;->zzi:Lcom/google/android/gms/internal/ads/zzagh;

    .line 55
    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/ads/zzagh;->zzz(Lcom/google/android/gms/internal/ads/zzv;)V

    iput-boolean v10, v6, Lcom/google/android/gms/internal/ads/zzaoj;->zzs:Z

    goto :goto_2

    .line 56
    :cond_5
    invoke-virtual {v12, v5}, Lcom/google/android/gms/internal/ads/zzeq;->zzh(I)V

    .line 57
    :goto_2
    invoke-virtual {v12, v3}, Lcom/google/android/gms/internal/ads/zzeq;->zzh(I)V

    .line 58
    invoke-virtual {v12, v1}, Lcom/google/android/gms/internal/ads/zzeq;->zzj(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x7

    iget-boolean v1, v6, Lcom/google/android/gms/internal/ads/zzaoj;->zzn:Z

    if-eqz v1, :cond_6

    add-int/lit8 v0, v0, -0x2

    :cond_6
    move v5, v0

    iget-object v1, v6, Lcom/google/android/gms/internal/ads/zzaoj;->zzi:Lcom/google/android/gms/internal/ads/zzagh;

    iget-wide v2, v6, Lcom/google/android/gms/internal/ads/zzaoj;->zzt:J

    const/4 v4, 0x0

    move-object/from16 v0, p0

    .line 59
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzaoj;->zzj(Lcom/google/android/gms/internal/ads/zzagh;JII)V

    goto/16 :goto_0

    .line 28
    :cond_7
    iget-object v0, v6, Lcom/google/android/gms/internal/ads/zzaoj;->zzd:Lcom/google/android/gms/internal/ads/zzer;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzer;->zzi()[B

    move-result-object v1

    .line 60
    invoke-direct {v6, v7, v1, v5}, Lcom/google/android/gms/internal/ads/zzaoj;->zzh(Lcom/google/android/gms/internal/ads/zzer;[BI)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v6, Lcom/google/android/gms/internal/ads/zzaoj;->zzj:Lcom/google/android/gms/internal/ads/zzagh;

    .line 61
    invoke-interface {v1, v0, v5}, Lcom/google/android/gms/internal/ads/zzagh;->zzc(Lcom/google/android/gms/internal/ads/zzer;I)V

    const/4 v1, 0x6

    .line 62
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    iget-object v1, v6, Lcom/google/android/gms/internal/ads/zzaoj;->zzj:Lcom/google/android/gms/internal/ads/zzagh;

    const-wide/16 v2, 0x0

    .line 63
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzer;->zzG()I

    move-result v0

    add-int/2addr v5, v0

    const/16 v4, 0xa

    move-object/from16 v0, p0

    .line 64
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzaoj;->zzj(Lcom/google/android/gms/internal/ads/zzagh;JII)V

    goto/16 :goto_0

    .line 24
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzer;->zzd()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v6, Lcom/google/android/gms/internal/ads/zzaoj;->zzc:Lcom/google/android/gms/internal/ads/zzeq;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzeq;->zza:[B

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzer;->zzi()[B

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzer;->zzg()I

    move-result v4

    .line 25
    aget-byte v2, v2, v4

    aput-byte v2, v1, v8

    .line 26
    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/zzeq;->zzf(I)V

    .line 27
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzeq;->zzj(I)I

    move-result v0

    iget v1, v6, Lcom/google/android/gms/internal/ads/zzaoj;->zzq:I

    if-eq v1, v5, :cond_9

    if-eq v0, v1, :cond_9

    .line 29
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzaoj;->zzg()V

    goto/16 :goto_0

    :cond_9
    iget-boolean v1, v6, Lcom/google/android/gms/internal/ads/zzaoj;->zzo:Z

    if-nez v1, :cond_a

    iput-boolean v10, v6, Lcom/google/android/gms/internal/ads/zzaoj;->zzo:Z

    iget v1, v6, Lcom/google/android/gms/internal/ads/zzaoj;->zzr:I

    iput v1, v6, Lcom/google/android/gms/internal/ads/zzaoj;->zzp:I

    iput v0, v6, Lcom/google/android/gms/internal/ads/zzaoj;->zzq:I

    .line 28
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzaoj;->zzk()V

    goto/16 :goto_0

    .line 34
    :cond_b
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzer;->zzi()[B

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzer;->zzg()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzer;->zze()I

    move-result v12

    :goto_3
    if-ge v11, v12, :cond_1a

    add-int/lit8 v13, v11, 0x1

    .line 3
    aget-byte v11, v0, v11

    and-int/lit16 v11, v11, 0xff

    iget v14, v6, Lcom/google/android/gms/internal/ads/zzaoj;->zzm:I

    const/16 v15, 0x200

    if-ne v14, v15, :cond_14

    int-to-byte v14, v11

    invoke-static {v5, v14}, Lcom/google/android/gms/internal/ads/zzaoj;->zzl(BB)Z

    move-result v14

    if-eqz v14, :cond_14

    iget-boolean v14, v6, Lcom/google/android/gms/internal/ads/zzaoj;->zzo:Z

    if-nez v14, :cond_11

    add-int/lit8 v14, v13, -0x2

    add-int/lit8 v15, v14, 0x1

    .line 4
    invoke-virtual {v7, v15}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    iget-object v15, v6, Lcom/google/android/gms/internal/ads/zzaoj;->zzc:Lcom/google/android/gms/internal/ads/zzeq;

    iget-object v8, v15, Lcom/google/android/gms/internal/ads/zzeq;->zza:[B

    .line 5
    invoke-static {v7, v8, v10}, Lcom/google/android/gms/internal/ads/zzaoj;->zzm(Lcom/google/android/gms/internal/ads/zzer;[BI)Z

    move-result v8

    if-nez v8, :cond_c

    goto/16 :goto_7

    .line 6
    :cond_c
    invoke-virtual {v15, v3}, Lcom/google/android/gms/internal/ads/zzeq;->zzf(I)V

    .line 7
    invoke-virtual {v15, v10}, Lcom/google/android/gms/internal/ads/zzeq;->zzj(I)I

    move-result v8

    iget v4, v6, Lcom/google/android/gms/internal/ads/zzaoj;->zzp:I

    if-eq v4, v5, :cond_d

    if-ne v8, v4, :cond_14

    :cond_d
    iget v4, v6, Lcom/google/android/gms/internal/ads/zzaoj;->zzq:I

    if-eq v4, v5, :cond_f

    iget-object v4, v15, Lcom/google/android/gms/internal/ads/zzeq;->zza:[B

    .line 8
    invoke-static {v7, v4, v10}, Lcom/google/android/gms/internal/ads/zzaoj;->zzm(Lcom/google/android/gms/internal/ads/zzer;[BI)Z

    move-result v4

    if-nez v4, :cond_e

    goto :goto_4

    .line 9
    :cond_e
    invoke-virtual {v15, v9}, Lcom/google/android/gms/internal/ads/zzeq;->zzf(I)V

    .line 10
    invoke-virtual {v15, v3}, Lcom/google/android/gms/internal/ads/zzeq;->zzj(I)I

    move-result v4

    iget v9, v6, Lcom/google/android/gms/internal/ads/zzaoj;->zzq:I

    if-ne v4, v9, :cond_14

    add-int/lit8 v4, v14, 0x2

    .line 11
    invoke-virtual {v7, v4}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    :cond_f
    iget-object v4, v15, Lcom/google/android/gms/internal/ads/zzeq;->zza:[B

    .line 12
    invoke-static {v7, v4, v3}, Lcom/google/android/gms/internal/ads/zzaoj;->zzm(Lcom/google/android/gms/internal/ads/zzer;[BI)Z

    move-result v4

    if-eqz v4, :cond_11

    const/16 v4, 0xe

    .line 13
    invoke-virtual {v15, v4}, Lcom/google/android/gms/internal/ads/zzeq;->zzf(I)V

    .line 14
    invoke-virtual {v15, v1}, Lcom/google/android/gms/internal/ads/zzeq;->zzj(I)I

    move-result v4

    if-lt v4, v2, :cond_14

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzer;->zzi()[B

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzer;->zze()I

    move-result v15

    add-int/2addr v14, v4

    if-ge v14, v15, :cond_11

    .line 15
    aget-byte v4, v9, v14

    if-ne v4, v5, :cond_10

    add-int/lit8 v14, v14, 0x1

    if-eq v14, v15, :cond_11

    .line 16
    aget-byte v4, v9, v14

    invoke-static {v5, v4}, Lcom/google/android/gms/internal/ads/zzaoj;->zzl(BB)Z

    move-result v9

    if-eqz v9, :cond_14

    and-int/lit8 v4, v4, 0x8

    const/4 v9, 0x3

    shr-int/2addr v4, v9

    if-ne v4, v8, :cond_14

    goto :goto_4

    :cond_10
    const/16 v8, 0x49

    if-ne v4, v8, :cond_14

    add-int/lit8 v4, v14, 0x1

    if-eq v4, v15, :cond_11

    .line 17
    aget-byte v4, v9, v4

    const/16 v8, 0x44

    if-ne v4, v8, :cond_14

    add-int/lit8 v14, v14, 0x2

    if-eq v14, v15, :cond_11

    .line 18
    aget-byte v4, v9, v14

    const/16 v8, 0x33

    if-ne v4, v8, :cond_14

    :cond_11
    :goto_4
    and-int/lit8 v0, v11, 0x8

    const/4 v1, 0x3

    shr-int/2addr v0, v1

    .line 8
    iput v0, v6, Lcom/google/android/gms/internal/ads/zzaoj;->zzr:I

    and-int/lit8 v0, v11, 0x1

    xor-int/2addr v0, v10

    if-eq v10, v0, :cond_12

    const/4 v0, 0x0

    goto :goto_5

    :cond_12
    move v0, v10

    :goto_5
    iput-boolean v0, v6, Lcom/google/android/gms/internal/ads/zzaoj;->zzn:Z

    iget-boolean v0, v6, Lcom/google/android/gms/internal/ads/zzaoj;->zzo:Z

    if-nez v0, :cond_13

    iput v10, v6, Lcom/google/android/gms/internal/ads/zzaoj;->zzk:I

    const/4 v0, 0x0

    iput v0, v6, Lcom/google/android/gms/internal/ads/zzaoj;->zzl:I

    goto :goto_6

    .line 19
    :cond_13
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzaoj;->zzk()V

    .line 20
    :goto_6
    invoke-virtual {v7, v13}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    goto/16 :goto_0

    .line 5
    :cond_14
    :goto_7
    iget v4, v6, Lcom/google/android/gms/internal/ads/zzaoj;->zzm:I

    or-int v8, v4, v11

    const/16 v9, 0x149

    if-eq v8, v9, :cond_19

    const/16 v9, 0x1ff

    if-eq v8, v9, :cond_18

    const/16 v9, 0x344

    if-eq v8, v9, :cond_17

    const/16 v9, 0x433

    if-eq v8, v9, :cond_16

    const/16 v8, 0x100

    if-eq v4, v8, :cond_15

    iput v8, v6, Lcom/google/android/gms/internal/ads/zzaoj;->zzm:I

    add-int/lit8 v11, v13, -0x1

    const/4 v4, 0x3

    const/4 v8, 0x0

    const/4 v9, 0x2

    goto/16 :goto_3

    :cond_15
    const/4 v4, 0x2

    const/4 v8, 0x3

    const/4 v9, 0x0

    goto :goto_9

    :cond_16
    const/4 v4, 0x2

    iput v4, v6, Lcom/google/android/gms/internal/ads/zzaoj;->zzk:I

    const/4 v8, 0x3

    iput v8, v6, Lcom/google/android/gms/internal/ads/zzaoj;->zzl:I

    const/4 v9, 0x0

    iput v9, v6, Lcom/google/android/gms/internal/ads/zzaoj;->zzu:I

    iget-object v0, v6, Lcom/google/android/gms/internal/ads/zzaoj;->zzd:Lcom/google/android/gms/internal/ads/zzer;

    .line 21
    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    .line 22
    invoke-virtual {v7, v13}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    goto/16 :goto_0

    :cond_17
    const/4 v4, 0x2

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/16 v11, 0x400

    goto :goto_8

    :cond_18
    const/4 v4, 0x2

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/16 v11, 0x200

    goto :goto_8

    :cond_19
    const/4 v4, 0x2

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/16 v11, 0x300

    :goto_8
    iput v11, v6, Lcom/google/android/gms/internal/ads/zzaoj;->zzm:I

    :goto_9
    move v11, v13

    move/from16 v16, v9

    move v9, v4

    move v4, v8

    move/from16 v8, v16

    goto/16 :goto_3

    .line 23
    :cond_1a
    invoke-virtual {v7, v11}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    goto/16 :goto_0

    :cond_1b
    return-void
.end method

.method public final zze(Z)V
    .locals 0

    return-void
.end method
