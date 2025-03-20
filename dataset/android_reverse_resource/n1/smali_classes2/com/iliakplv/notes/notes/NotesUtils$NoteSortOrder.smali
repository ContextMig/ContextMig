.class public final enum Lcom/iliakplv/notes/notes/NotesUtils$NoteSortOrder;
.super Ljava/lang/Enum;
.source "NotesUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iliakplv/notes/notes/NotesUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NoteSortOrder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/iliakplv/notes/notes/NotesUtils$NoteSortOrder;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iliakplv/notes/notes/NotesUtils$NoteSortOrder;

.field private static final transient synthetic $jacocoData:[Z

.field public static final enum ChangeDate:Lcom/iliakplv/notes/notes/NotesUtils$NoteSortOrder;

.field public static final enum CreateDateAscending:Lcom/iliakplv/notes/notes/NotesUtils$NoteSortOrder;

.field public static final enum CreateDateDescending:Lcom/iliakplv/notes/notes/NotesUtils$NoteSortOrder;

.field public static final enum Title:Lcom/iliakplv/notes/notes/NotesUtils$NoteSortOrder;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/iliakplv/notes/notes/NotesUtils$NoteSortOrder;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x6a3f73cfe521191bL    # 6.163263729402961E203

    const-string v2, "com/iliakplv/notes/notes/NotesUtils$NoteSortOrder"

    const/4 v3, 0x7

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/iliakplv/notes/notes/NotesUtils$NoteSortOrder;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x1

    invoke-static {}, Lcom/iliakplv/notes/notes/NotesUtils$NoteSortOrder;->$jacocoInit()[Z

    move-result-object v0

    .line 22
    new-instance v1, Lcom/iliakplv/notes/notes/NotesUtils$NoteSortOrder;

    const-string v2, "Title"

    invoke-direct {v1, v2, v5}, Lcom/iliakplv/notes/notes/NotesUtils$NoteSortOrder;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/iliakplv/notes/notes/NotesUtils$NoteSortOrder;->Title:Lcom/iliakplv/notes/notes/NotesUtils$NoteSortOrder;

    aput-boolean v3, v0, v4

    .line 23
    new-instance v1, Lcom/iliakplv/notes/notes/NotesUtils$NoteSortOrder;

    const-string v2, "CreateDateAscending"

    invoke-direct {v1, v2, v3}, Lcom/iliakplv/notes/notes/NotesUtils$NoteSortOrder;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/iliakplv/notes/notes/NotesUtils$NoteSortOrder;->CreateDateAscending:Lcom/iliakplv/notes/notes/NotesUtils$NoteSortOrder;

    aput-boolean v3, v0, v7

    .line 24
    new-instance v1, Lcom/iliakplv/notes/notes/NotesUtils$NoteSortOrder;

    const-string v2, "CreateDateDescending"

    invoke-direct {v1, v2, v6}, Lcom/iliakplv/notes/notes/NotesUtils$NoteSortOrder;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/iliakplv/notes/notes/NotesUtils$NoteSortOrder;->CreateDateDescending:Lcom/iliakplv/notes/notes/NotesUtils$NoteSortOrder;

    const/4 v1, 0x5

    aput-boolean v3, v0, v1

    .line 25
    new-instance v1, Lcom/iliakplv/notes/notes/NotesUtils$NoteSortOrder;

    const-string v2, "ChangeDate"

    invoke-direct {v1, v2, v4}, Lcom/iliakplv/notes/notes/NotesUtils$NoteSortOrder;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/iliakplv/notes/notes/NotesUtils$NoteSortOrder;->ChangeDate:Lcom/iliakplv/notes/notes/NotesUtils$NoteSortOrder;

    .line 21
    new-array v1, v7, [Lcom/iliakplv/notes/notes/NotesUtils$NoteSortOrder;

    sget-object v2, Lcom/iliakplv/notes/notes/NotesUtils$NoteSortOrder;->Title:Lcom/iliakplv/notes/notes/NotesUtils$NoteSortOrder;

    aput-object v2, v1, v5

    sget-object v2, Lcom/iliakplv/notes/notes/NotesUtils$NoteSortOrder;->CreateDateAscending:Lcom/iliakplv/notes/notes/NotesUtils$NoteSortOrder;

    aput-object v2, v1, v3

    sget-object v2, Lcom/iliakplv/notes/notes/NotesUtils$NoteSortOrder;->CreateDateDescending:Lcom/iliakplv/notes/notes/NotesUtils$NoteSortOrder;

    aput-object v2, v1, v6

    sget-object v2, Lcom/iliakplv/notes/notes/NotesUtils$NoteSortOrder;->ChangeDate:Lcom/iliakplv/notes/notes/NotesUtils$NoteSortOrder;

    aput-object v2, v1, v4

    sput-object v1, Lcom/iliakplv/notes/notes/NotesUtils$NoteSortOrder;->$VALUES:[Lcom/iliakplv/notes/notes/NotesUtils$NoteSortOrder;

    const/4 v1, 0x6

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
    invoke-static {}, Lcom/iliakplv/notes/notes/NotesUtils$NoteSortOrder;->$jacocoInit()[Z

    move-result-object v0

    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 v1, 0x2

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iliakplv/notes/notes/NotesUtils$NoteSortOrder;
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/iliakplv/notes/notes/NotesUtils$NoteSortOrder;->$jacocoInit()[Z

    move-result-object v1

    .line 21
    const-class v0, Lcom/iliakplv/notes/notes/NotesUtils$NoteSortOrder;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/iliakplv/notes/notes/NotesUtils$NoteSortOrder;

    aput-boolean v2, v1, v2

    return-object v0
.end method

.method public static values()[Lcom/iliakplv/notes/notes/NotesUtils$NoteSortOrder;
    .locals 4

    .prologue
    invoke-static {}, Lcom/iliakplv/notes/notes/NotesUtils$NoteSortOrder;->$jacocoInit()[Z

    move-result-object v1

    .line 21
    sget-object v0, Lcom/iliakplv/notes/notes/NotesUtils$NoteSortOrder;->$VALUES:[Lcom/iliakplv/notes/notes/NotesUtils$NoteSortOrder;

    invoke-virtual {v0}, [Lcom/iliakplv/notes/notes/NotesUtils$NoteSortOrder;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iliakplv/notes/notes/NotesUtils$NoteSortOrder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    return-object v0
.end method
