.class public Lcom/fsck/k9/mail/BoundaryGenerator;
.super Ljava/lang/Object;
.source "BoundaryGenerator.java"


# static fields
.field private static final BASE36_MAP:[C

.field private static final BOUNDARY_CHARACTER_COUNT:I = 0x1e

.field private static final INSTANCE:Lcom/fsck/k9/mail/BoundaryGenerator;


# instance fields
.field private final random:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 10
    new-instance v0, Lcom/fsck/k9/mail/BoundaryGenerator;

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    invoke-direct {v0, v1}, Lcom/fsck/k9/mail/BoundaryGenerator;-><init>(Ljava/util/Random;)V

    sput-object v0, Lcom/fsck/k9/mail/BoundaryGenerator;->INSTANCE:Lcom/fsck/k9/mail/BoundaryGenerator;

    .line 13
    const/16 v0, 0x24

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/fsck/k9/mail/BoundaryGenerator;->BASE36_MAP:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
    .end array-data
.end method

.method constructor <init>(Ljava/util/Random;)V
    .locals 0
    .param p1, "random"    # Ljava/util/Random;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/fsck/k9/mail/BoundaryGenerator;->random:Ljava/util/Random;

    .line 31
    return-void
.end method

.method public static getInstance()Lcom/fsck/k9/mail/BoundaryGenerator;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/fsck/k9/mail/BoundaryGenerator;->INSTANCE:Lcom/fsck/k9/mail/BoundaryGenerator;

    return-object v0
.end method


# virtual methods
.method public generateBoundary()Ljava/lang/String;
    .locals 5

    .prologue
    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x22

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 35
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v2, "----"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x1e

    if-ge v1, v2, :cond_0

    .line 38
    sget-object v2, Lcom/fsck/k9/mail/BoundaryGenerator;->BASE36_MAP:[C

    iget-object v3, p0, Lcom/fsck/k9/mail/BoundaryGenerator;->random:Ljava/util/Random;

    const/16 v4, 0x24

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    aget-char v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 37
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
