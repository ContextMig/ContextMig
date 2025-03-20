.class final enum Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;
.super Ljava/lang/Enum;
.source "NotesDatabaseStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "TransactionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;

.field private static final transient synthetic $jacocoData:[Z

.field public static final enum DeleteAllData:Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;

.field public static final enum DeleteLabel:Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;

.field public static final enum DeleteLabelFromNote:Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;

.field public static final enum DeleteNote:Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;

.field public static final enum GetAllLabels:Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;

.field public static final enum GetAllNotes:Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;

.field public static final enum GetAllNotesLabelsIds:Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;

.field public static final enum GetLabel:Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;

.field public static final enum GetLabelsForNote:Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;

.field public static final enum GetLabelsIdsForNote:Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;

.field public static final enum GetNote:Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;

.field public static final enum GetNotesForLabel:Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;

.field public static final enum InsertLabel:Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;

.field public static final enum InsertLabelToNote:Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;

.field public static final enum InsertNote:Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;

.field public static final enum UpdateLabel:Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;

.field public static final enum UpdateNote:Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x47840b74c3091e80L    # 3.330505424121269E36

    const-string v2, "com/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType"

    const/16 v3, 0x14

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x6

    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x1

    invoke-static {}, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;->$jacocoInit()[Z

    move-result-object v0

    .line 434
    new-instance v1, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;

    const-string v2, "GetNote"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;->GetNote:Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;

    aput-boolean v4, v0, v5

    .line 435
    new-instance v1, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;

    const-string v2, "GetAllNotes"

    invoke-direct {v1, v2, v4}, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;->GetAllNotes:Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;

    aput-boolean v4, v0, v6

    .line 436
    new-instance v1, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;

    const-string v2, "InsertNote"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;->InsertNote:Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;

    aput-boolean v4, v0, v7

    .line 437
    new-instance v1, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;

    const-string v2, "UpdateNote"

    invoke-direct {v1, v2, v5}, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;->UpdateNote:Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;

    aput-boolean v4, v0, v8

    .line 438
    new-instance v1, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;

    const-string v2, "DeleteNote"

    invoke-direct {v1, v2, v6}, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;->DeleteNote:Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;

    const/4 v1, 0x7

    aput-boolean v4, v0, v1

    .line 440
    new-instance v1, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;

    const-string v2, "GetLabel"

    invoke-direct {v1, v2, v7}, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;->GetLabel:Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;

    const/16 v1, 0x8

    aput-boolean v4, v0, v1

    .line 441
    new-instance v1, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;

    const-string v2, "GetAllLabels"

    invoke-direct {v1, v2, v8}, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;->GetAllLabels:Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;

    const/16 v1, 0x9

    aput-boolean v4, v0, v1

    .line 442
    new-instance v1, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;

    const-string v2, "InsertLabel"

    const/4 v3, 0x7

    invoke-direct {v1, v2, v3}, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;->InsertLabel:Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;

    const/16 v1, 0xa

    aput-boolean v4, v0, v1

    .line 443
    new-instance v1, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;

    const-string v2, "UpdateLabel"

    const/16 v3, 0x8

    invoke-direct {v1, v2, v3}, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;->UpdateLabel:Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;

    const/16 v1, 0xb

    aput-boolean v4, v0, v1

    .line 444
    new-instance v1, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;

    const-string v2, "DeleteLabel"

    const/16 v3, 0x9

    invoke-direct {v1, v2, v3}, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;->DeleteLabel:Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;

    const/16 v1, 0xc

    aput-boolean v4, v0, v1

    .line 446
    new-instance v1, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;

    const-string v2, "GetAllNotesLabelsIds"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;->GetAllNotesLabelsIds:Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;

    const/16 v1, 0xd

    aput-boolean v4, v0, v1

    .line 447
    new-instance v1, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;

    const-string v2, "GetLabelsForNote"

    const/16 v3, 0xb

    invoke-direct {v1, v2, v3}, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;->GetLabelsForNote:Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;

    const/16 v1, 0xe

    aput-boolean v4, v0, v1

    .line 448
    new-instance v1, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;

    const-string v2, "GetLabelsIdsForNote"

    const/16 v3, 0xc

    invoke-direct {v1, v2, v3}, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;->GetLabelsIdsForNote:Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;

    const/16 v1, 0xf

    aput-boolean v4, v0, v1

    .line 449
    new-instance v1, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;

    const-string v2, "GetNotesForLabel"

    const/16 v3, 0xd

    invoke-direct {v1, v2, v3}, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;->GetNotesForLabel:Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;

    const/16 v1, 0x10

    aput-boolean v4, v0, v1

    .line 450
    new-instance v1, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;

    const-string v2, "InsertLabelToNote"

    const/16 v3, 0xe

    invoke-direct {v1, v2, v3}, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;->InsertLabelToNote:Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;

    const/16 v1, 0x11

    aput-boolean v4, v0, v1

    .line 451
    new-instance v1, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;

    const-string v2, "DeleteLabelFromNote"

    const/16 v3, 0xf

    invoke-direct {v1, v2, v3}, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;->DeleteLabelFromNote:Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;

    const/16 v1, 0x12

    aput-boolean v4, v0, v1

    .line 453
    new-instance v1, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;

    const-string v2, "DeleteAllData"

    const/16 v3, 0x10

    invoke-direct {v1, v2, v3}, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;->DeleteAllData:Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;

    .line 433
    const/16 v1, 0x11

    new-array v1, v1, [Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;

    const/4 v2, 0x0

    sget-object v3, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;->GetNote:Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;

    aput-object v3, v1, v2

    sget-object v2, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;->GetAllNotes:Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;

    aput-object v2, v1, v4

    const/4 v2, 0x2

    sget-object v3, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;->InsertNote:Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;

    aput-object v3, v1, v2

    sget-object v2, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;->UpdateNote:Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;

    aput-object v2, v1, v5

    sget-object v2, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;->DeleteNote:Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;

    aput-object v2, v1, v6

    sget-object v2, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;->GetLabel:Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;

    aput-object v2, v1, v7

    sget-object v2, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;->GetAllLabels:Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;

    aput-object v2, v1, v8

    const/4 v2, 0x7

    sget-object v3, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;->InsertLabel:Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    sget-object v3, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;->UpdateLabel:Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;

    aput-object v3, v1, v2

    const/16 v2, 0x9

    sget-object v3, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;->DeleteLabel:Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;

    aput-object v3, v1, v2

    const/16 v2, 0xa

    sget-object v3, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;->GetAllNotesLabelsIds:Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;

    aput-object v3, v1, v2

    const/16 v2, 0xb

    sget-object v3, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;->GetLabelsForNote:Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;

    aput-object v3, v1, v2

    const/16 v2, 0xc

    sget-object v3, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;->GetLabelsIdsForNote:Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;

    aput-object v3, v1, v2

    const/16 v2, 0xd

    sget-object v3, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;->GetNotesForLabel:Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;

    aput-object v3, v1, v2

    const/16 v2, 0xe

    sget-object v3, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;->InsertLabelToNote:Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;

    aput-object v3, v1, v2

    const/16 v2, 0xf

    sget-object v3, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;->DeleteLabelFromNote:Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;

    aput-object v3, v1, v2

    const/16 v2, 0x10

    sget-object v3, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;->DeleteAllData:Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;

    aput-object v3, v1, v2

    sput-object v1, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;->$VALUES:[Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;

    const/16 v1, 0x13

    aput-boolean v4, v0, v1

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
    invoke-static {}, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;->$jacocoInit()[Z

    move-result-object v0

    .line 433
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 v1, 0x2

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;->$jacocoInit()[Z

    move-result-object v1

    .line 433
    const-class v0, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;

    aput-boolean v2, v1, v2

    return-object v0
.end method

.method public static values()[Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;
    .locals 4

    .prologue
    invoke-static {}, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;->$jacocoInit()[Z

    move-result-object v1

    .line 433
    sget-object v0, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;->$VALUES:[Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;

    invoke-virtual {v0}, [Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    return-object v0
.end method
