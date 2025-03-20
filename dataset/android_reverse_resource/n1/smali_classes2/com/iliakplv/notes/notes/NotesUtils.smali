.class public final Lcom/iliakplv/notes/notes/NotesUtils;
.super Ljava/lang/Object;
.source "NotesUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iliakplv/notes/notes/NotesUtils$NoteSortOrder;
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z

.field private static final COLORS_NAMES:[Ljava/lang/String;

.field public static final DEFAULT_ID:Ljava/io/Serializable;

.field public static final DEFAULT_SORT_ORDER:Lcom/iliakplv/notes/notes/NotesUtils$NoteSortOrder;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/iliakplv/notes/notes/NotesUtils;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x5ed0855e458bdd9aL    # -7.693314742849998E-149

    const-string v2, "com/iliakplv/notes/notes/NotesUtils"

    const/16 v3, 0x28

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/iliakplv/notes/notes/NotesUtils;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/iliakplv/notes/notes/NotesUtils;->$jacocoInit()[Z

    move-result-object v0

    .line 19
    const-string v1, ""

    sput-object v1, Lcom/iliakplv/notes/notes/NotesUtils;->DEFAULT_ID:Ljava/io/Serializable;

    .line 28
    sget-object v1, Lcom/iliakplv/notes/notes/NotesUtils$NoteSortOrder;->Title:Lcom/iliakplv/notes/notes/NotesUtils$NoteSortOrder;

    sput-object v1, Lcom/iliakplv/notes/notes/NotesUtils;->DEFAULT_SORT_ORDER:Lcom/iliakplv/notes/notes/NotesUtils$NoteSortOrder;

    const/16 v1, 0x26

    aput-boolean v3, v0, v1

    .line 32
    invoke-static {}, Lcom/iliakplv/notes/NotesApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/iliakplv/notes/notes/NotesUtils;->COLORS_NAMES:[Ljava/lang/String;

    .line 31
    const/16 v1, 0x27

    aput-boolean v3, v0, v1

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/iliakplv/notes/notes/NotesUtils;->$jacocoInit()[Z

    move-result-object v0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    aput-boolean v3, v0, v1

    .line 16
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "Instance creation not allowed!"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    aput-boolean v3, v0, v3

    throw v1
.end method

.method public static getTitleForLabel(Lcom/iliakplv/notes/notes/Label;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/iliakplv/notes/notes/NotesUtils;->$jacocoInit()[Z

    move-result-object v1

    .line 67
    invoke-virtual {p0}, Lcom/iliakplv/notes/notes/Label;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iliakplv/notes/utils/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x11

    aput-boolean v4, v1, v0

    .line 68
    invoke-virtual {p0}, Lcom/iliakplv/notes/notes/Label;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x12

    aput-boolean v4, v1, v2

    .line 70
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/iliakplv/notes/notes/NotesUtils;->COLORS_NAMES:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/iliakplv/notes/notes/Label;->getColor()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x13

    aput-boolean v4, v1, v2

    goto :goto_0
.end method

.method public static getTitleForNoteInDialog(Lcom/iliakplv/notes/notes/AbstractNote;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/iliakplv/notes/notes/NotesUtils;->$jacocoInit()[Z

    move-result-object v1

    .line 36
    invoke-static {p0}, Lcom/iliakplv/notes/notes/NotesUtils;->isNoteBlank(Lcom/iliakplv/notes/notes/AbstractNote;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    aput-boolean v3, v1, v0

    .line 37
    invoke-static {}, Lcom/iliakplv/notes/NotesApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f05002e

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x3

    aput-boolean v3, v1, v2

    .line 41
    :goto_0
    return-object v0

    .line 38
    :cond_0
    invoke-static {p0}, Lcom/iliakplv/notes/notes/NotesUtils;->isNoteTitleBlank(Lcom/iliakplv/notes/notes/AbstractNote;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x4

    aput-boolean v3, v1, v0

    .line 39
    invoke-virtual {p0}, Lcom/iliakplv/notes/notes/AbstractNote;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x5

    aput-boolean v3, v1, v2

    goto :goto_0

    .line 41
    :cond_1
    invoke-virtual {p0}, Lcom/iliakplv/notes/notes/AbstractNote;->getBody()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x6

    aput-boolean v3, v1, v2

    goto :goto_0
.end method

.method public static getTitleForNoteInList(Lcom/iliakplv/notes/notes/AbstractNote;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/iliakplv/notes/notes/NotesUtils;->$jacocoInit()[Z

    move-result-object v1

    .line 46
    invoke-static {p0}, Lcom/iliakplv/notes/notes/NotesUtils;->isNoteBlank(Lcom/iliakplv/notes/notes/AbstractNote;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    aput-boolean v3, v1, v0

    .line 47
    invoke-static {}, Lcom/iliakplv/notes/NotesApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f05002e

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x8

    aput-boolean v3, v1, v2

    .line 49
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/iliakplv/notes/notes/AbstractNote;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x9

    aput-boolean v3, v1, v2

    goto :goto_0
.end method

.method public static getValidNoteId(Ljava/io/Serializable;)Ljava/io/Serializable;
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/iliakplv/notes/notes/NotesUtils;->$jacocoInit()[Z

    move-result-object v0

    .line 75
    if-eqz p0, :cond_0

    const/16 v1, 0x14

    aput-boolean v2, v0, v1

    :goto_0
    const/16 v1, 0x16

    aput-boolean v2, v0, v1

    return-object p0

    :cond_0
    sget-object p0, Lcom/iliakplv/notes/notes/NotesUtils;->DEFAULT_ID:Ljava/io/Serializable;

    const/16 v1, 0x15

    aput-boolean v2, v0, v1

    goto :goto_0
.end method

.method public static isNoteBlank(Lcom/iliakplv/notes/notes/AbstractNote;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lcom/iliakplv/notes/notes/NotesUtils;->$jacocoInit()[Z

    move-result-object v2

    .line 62
    invoke-static {p0}, Lcom/iliakplv/notes/notes/NotesUtils;->isNoteTitleBlank(Lcom/iliakplv/notes/notes/AbstractNote;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xc

    aput-boolean v1, v2, v0

    :goto_0
    const/4 v0, 0x0

    const/16 v3, 0xf

    aput-boolean v1, v2, v3

    :goto_1
    const/16 v3, 0x10

    aput-boolean v1, v2, v3

    return v0

    :cond_0
    invoke-static {p0}, Lcom/iliakplv/notes/notes/NotesUtils;->isNoteBodyBlank(Lcom/iliakplv/notes/notes/AbstractNote;)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0xd

    aput-boolean v1, v2, v0

    goto :goto_0

    :cond_1
    const/16 v0, 0xe

    aput-boolean v1, v2, v0

    move v0, v1

    goto :goto_1
.end method

.method public static isNoteBodyBlank(Lcom/iliakplv/notes/notes/AbstractNote;)Z
    .locals 4

    .prologue
    invoke-static {}, Lcom/iliakplv/notes/notes/NotesUtils;->$jacocoInit()[Z

    move-result-object v0

    .line 58
    invoke-virtual {p0}, Lcom/iliakplv/notes/notes/AbstractNote;->getBody()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iliakplv/notes/utils/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v1

    const/16 v2, 0xb

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public static isNoteTitleBlank(Lcom/iliakplv/notes/notes/AbstractNote;)Z
    .locals 4

    .prologue
    invoke-static {}, Lcom/iliakplv/notes/notes/NotesUtils;->$jacocoInit()[Z

    move-result-object v0

    .line 54
    invoke-virtual {p0}, Lcom/iliakplv/notes/notes/AbstractNote;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iliakplv/notes/utils/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v1

    const/16 v2, 0xa

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public static shareNote(Landroid/content/Context;Lcom/iliakplv/notes/notes/AbstractNote;Z)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/iliakplv/notes/notes/NotesUtils;->$jacocoInit()[Z

    move-result-object v0

    .line 80
    invoke-virtual {p1}, Lcom/iliakplv/notes/notes/AbstractNote;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/iliakplv/notes/notes/AbstractNote;->getBody()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2, p2}, Lcom/iliakplv/notes/notes/NotesUtils;->shareNote(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 81
    const/16 v1, 0x17

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public static shareNote(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-static {}, Lcom/iliakplv/notes/notes/NotesUtils;->$jacocoInit()[Z

    move-result-object v3

    .line 84
    invoke-static {p1}, Lcom/iliakplv/notes/utils/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const/16 v4, 0x18

    aput-boolean v1, v3, v4

    :goto_0
    const/16 v4, 0x1b

    aput-boolean v1, v3, v4

    move v0, v2

    .line 85
    .local v0, "empty":Z
    :goto_1
    if-nez v0, :cond_2

    const/16 v2, 0x1c

    aput-boolean v1, v3, v2

    .line 86
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.SEND"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x1d

    aput-boolean v1, v3, v4

    .line 87
    const-string v4, "text/plain"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v4, 0x1e

    aput-boolean v1, v3, v4

    .line 88
    const-string v4, "android.intent.extra.SUBJECT"

    invoke-virtual {v2, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v4, 0x1f

    aput-boolean v1, v3, v4

    .line 89
    const-string v4, "android.intent.extra.TEXT"

    invoke-virtual {v2, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v4, 0x20

    aput-boolean v1, v3, v4

    .line 90
    const v4, 0x7f05000c

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 91
    const/16 v2, 0x21

    aput-boolean v1, v3, v2

    .line 94
    :goto_2
    const/16 v2, 0x25

    aput-boolean v1, v3, v2

    return-void

    .line 84
    .end local v0    # "empty":Z
    :cond_0
    invoke-static {p2}, Lcom/iliakplv/notes/utils/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const/16 v4, 0x19

    aput-boolean v1, v3, v4

    goto :goto_0

    :cond_1
    const/16 v4, 0x1a

    aput-boolean v1, v3, v4

    move v0, v1

    goto :goto_1

    .line 91
    .restart local v0    # "empty":Z
    :cond_2
    if-nez p3, :cond_3

    const/16 v2, 0x22

    aput-boolean v1, v3, v2

    goto :goto_2

    :cond_3
    const/16 v4, 0x23

    aput-boolean v1, v3, v4

    .line 92
    const v4, 0x7f05002d

    invoke-static {p0, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    const/16 v2, 0x24

    aput-boolean v1, v3, v2

    goto :goto_2
.end method
