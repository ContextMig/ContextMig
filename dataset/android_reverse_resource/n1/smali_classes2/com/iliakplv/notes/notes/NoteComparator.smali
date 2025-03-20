.class public Lcom/iliakplv/notes/notes/NoteComparator;
.super Ljava/lang/Object;
.source "NoteComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/iliakplv/notes/notes/AbstractNote;",
        ">;"
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field order:Lcom/iliakplv/notes/notes/NotesUtils$NoteSortOrder;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/iliakplv/notes/notes/NoteComparator;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0xfe018fe2198f84dL

    const-string v2, "com/iliakplv/notes/notes/NoteComparator"

    const/16 v3, 0xc

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/iliakplv/notes/notes/NoteComparator;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/iliakplv/notes/notes/NoteComparator;->$jacocoInit()[Z

    move-result-object v0

    .line 11
    sget-object v1, Lcom/iliakplv/notes/notes/NotesUtils;->DEFAULT_SORT_ORDER:Lcom/iliakplv/notes/notes/NotesUtils$NoteSortOrder;

    invoke-direct {p0, v1}, Lcom/iliakplv/notes/notes/NoteComparator;-><init>(Lcom/iliakplv/notes/notes/NotesUtils$NoteSortOrder;)V

    .line 12
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>(Lcom/iliakplv/notes/notes/NotesUtils$NoteSortOrder;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/iliakplv/notes/notes/NoteComparator;->$jacocoInit()[Z

    move-result-object v0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    if-nez p1, :cond_0

    aput-boolean v3, v0, v3

    .line 16
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Order is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x2

    aput-boolean v3, v0, v2

    throw v1

    .line 18
    :cond_0
    iput-object p1, p0, Lcom/iliakplv/notes/notes/NoteComparator;->order:Lcom/iliakplv/notes/notes/NotesUtils$NoteSortOrder;

    .line 19
    const/4 v1, 0x3

    aput-boolean v3, v0, v1

    return-void
.end method


# virtual methods
.method public compare(Lcom/iliakplv/notes/notes/AbstractNote;Lcom/iliakplv/notes/notes/AbstractNote;)I
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/iliakplv/notes/notes/NoteComparator;->$jacocoInit()[Z

    move-result-object v1

    .line 33
    sget-object v0, Lcom/iliakplv/notes/notes/NoteComparator$1;->$SwitchMap$com$iliakplv$notes$notes$NotesUtils$NoteSortOrder:[I

    iget-object v2, p0, Lcom/iliakplv/notes/notes/NoteComparator;->order:Lcom/iliakplv/notes/notes/NotesUtils$NoteSortOrder;

    invoke-virtual {v2}, Lcom/iliakplv/notes/notes/NotesUtils$NoteSortOrder;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown sort order type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/iliakplv/notes/notes/NoteComparator;->order:Lcom/iliakplv/notes/notes/NotesUtils$NoteSortOrder;

    invoke-virtual {v3}, Lcom/iliakplv/notes/notes/NotesUtils$NoteSortOrder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const/16 v2, 0xa

    aput-boolean v4, v1, v2

    throw v0

    .line 35
    :pswitch_0
    invoke-virtual {p1}, Lcom/iliakplv/notes/notes/AbstractNote;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/iliakplv/notes/notes/AbstractNote;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x6

    aput-boolean v4, v1, v2

    .line 41
    :goto_0
    return v0

    .line 37
    :pswitch_1
    invoke-virtual {p1}, Lcom/iliakplv/notes/notes/AbstractNote;->getCreateTime()Lorg/joda/time/DateTime;

    move-result-object v0

    invoke-virtual {p2}, Lcom/iliakplv/notes/notes/AbstractNote;->getCreateTime()Lorg/joda/time/DateTime;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/joda/time/DateTime;->compareTo(Lorg/joda/time/ReadableInstant;)I

    move-result v0

    const/4 v2, 0x7

    aput-boolean v4, v1, v2

    goto :goto_0

    .line 39
    :pswitch_2
    invoke-virtual {p2}, Lcom/iliakplv/notes/notes/AbstractNote;->getCreateTime()Lorg/joda/time/DateTime;

    move-result-object v0

    invoke-virtual {p1}, Lcom/iliakplv/notes/notes/AbstractNote;->getCreateTime()Lorg/joda/time/DateTime;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/joda/time/DateTime;->compareTo(Lorg/joda/time/ReadableInstant;)I

    move-result v0

    const/16 v2, 0x8

    aput-boolean v4, v1, v2

    goto :goto_0

    .line 41
    :pswitch_3
    invoke-virtual {p2}, Lcom/iliakplv/notes/notes/AbstractNote;->getChangeTime()Lorg/joda/time/DateTime;

    move-result-object v0

    invoke-virtual {p1}, Lcom/iliakplv/notes/notes/AbstractNote;->getChangeTime()Lorg/joda/time/DateTime;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/joda/time/DateTime;->compareTo(Lorg/joda/time/ReadableInstant;)I

    move-result v0

    const/16 v2, 0x9

    aput-boolean v4, v1, v2

    goto :goto_0

    .line 33
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    .prologue
    invoke-static {}, Lcom/iliakplv/notes/notes/NoteComparator;->$jacocoInit()[Z

    move-result-object v0

    .line 5
    check-cast p1, Lcom/iliakplv/notes/notes/AbstractNote;

    check-cast p2, Lcom/iliakplv/notes/notes/AbstractNote;

    invoke-virtual {p0, p1, p2}, Lcom/iliakplv/notes/notes/NoteComparator;->compare(Lcom/iliakplv/notes/notes/AbstractNote;Lcom/iliakplv/notes/notes/AbstractNote;)I

    move-result v1

    const/16 v2, 0xb

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public getSortOrder()Lcom/iliakplv/notes/notes/NotesUtils$NoteSortOrder;
    .locals 4

    .prologue
    invoke-static {}, Lcom/iliakplv/notes/notes/NoteComparator;->$jacocoInit()[Z

    move-result-object v0

    .line 23
    iget-object v1, p0, Lcom/iliakplv/notes/notes/NoteComparator;->order:Lcom/iliakplv/notes/notes/NotesUtils$NoteSortOrder;

    const/4 v2, 0x4

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public setSortOrder(Lcom/iliakplv/notes/notes/NotesUtils$NoteSortOrder;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/iliakplv/notes/notes/NoteComparator;->$jacocoInit()[Z

    move-result-object v0

    .line 27
    iput-object p1, p0, Lcom/iliakplv/notes/notes/NoteComparator;->order:Lcom/iliakplv/notes/notes/NotesUtils$NoteSortOrder;

    .line 28
    const/4 v1, 0x5

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
