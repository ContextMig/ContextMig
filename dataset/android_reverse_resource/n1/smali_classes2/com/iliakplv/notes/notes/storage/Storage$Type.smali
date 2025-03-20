.class public final enum Lcom/iliakplv/notes/notes/storage/Storage$Type;
.super Ljava/lang/Enum;
.source "Storage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iliakplv/notes/notes/storage/Storage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/iliakplv/notes/notes/storage/Storage$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iliakplv/notes/notes/storage/Storage$Type;

.field private static final transient synthetic $jacocoData:[Z

.field public static final enum Database:Lcom/iliakplv/notes/notes/storage/Storage$Type;

.field public static final enum Dropbox:Lcom/iliakplv/notes/notes/storage/Storage$Type;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/iliakplv/notes/notes/storage/Storage$Type;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x46121eb3b0a7d999L    # 3.5890217687647406E29

    const-string v2, "com/iliakplv/notes/notes/storage/Storage$Type"

    const/4 v3, 0x5

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/iliakplv/notes/notes/storage/Storage$Type;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-static {}, Lcom/iliakplv/notes/notes/storage/Storage$Type;->$jacocoInit()[Z

    move-result-object v0

    .line 92
    new-instance v1, Lcom/iliakplv/notes/notes/storage/Storage$Type;

    const-string v2, "Database"

    invoke-direct {v1, v2, v4}, Lcom/iliakplv/notes/notes/storage/Storage$Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/iliakplv/notes/notes/storage/Storage$Type;->Database:Lcom/iliakplv/notes/notes/storage/Storage$Type;

    const/4 v1, 0x3

    aput-boolean v3, v0, v1

    .line 93
    new-instance v1, Lcom/iliakplv/notes/notes/storage/Storage$Type;

    const-string v2, "Dropbox"

    invoke-direct {v1, v2, v3}, Lcom/iliakplv/notes/notes/storage/Storage$Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/iliakplv/notes/notes/storage/Storage$Type;->Dropbox:Lcom/iliakplv/notes/notes/storage/Storage$Type;

    .line 91
    const/4 v1, 0x2

    new-array v1, v1, [Lcom/iliakplv/notes/notes/storage/Storage$Type;

    sget-object v2, Lcom/iliakplv/notes/notes/storage/Storage$Type;->Database:Lcom/iliakplv/notes/notes/storage/Storage$Type;

    aput-object v2, v1, v4

    sget-object v2, Lcom/iliakplv/notes/notes/storage/Storage$Type;->Dropbox:Lcom/iliakplv/notes/notes/storage/Storage$Type;

    aput-object v2, v1, v3

    sput-object v1, Lcom/iliakplv/notes/notes/storage/Storage$Type;->$VALUES:[Lcom/iliakplv/notes/notes/storage/Storage$Type;

    const/4 v1, 0x4

    aput-boolean v3, v0, v1

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    invoke-static {}, Lcom/iliakplv/notes/notes/storage/Storage$Type;->$jacocoInit()[Z

    move-result-object v0

    .line 91
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 v1, 0x2

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iliakplv/notes/notes/storage/Storage$Type;
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/iliakplv/notes/notes/storage/Storage$Type;->$jacocoInit()[Z

    move-result-object v1

    .line 91
    const-class v0, Lcom/iliakplv/notes/notes/storage/Storage$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/iliakplv/notes/notes/storage/Storage$Type;

    aput-boolean v2, v1, v2

    return-object v0
.end method

.method public static values()[Lcom/iliakplv/notes/notes/storage/Storage$Type;
    .locals 4

    .prologue
    invoke-static {}, Lcom/iliakplv/notes/notes/storage/Storage$Type;->$jacocoInit()[Z

    move-result-object v1

    .line 91
    sget-object v0, Lcom/iliakplv/notes/notes/storage/Storage$Type;->$VALUES:[Lcom/iliakplv/notes/notes/storage/Storage$Type;

    invoke-virtual {v0}, [Lcom/iliakplv/notes/notes/storage/Storage$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iliakplv/notes/notes/storage/Storage$Type;

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    return-object v0
.end method
