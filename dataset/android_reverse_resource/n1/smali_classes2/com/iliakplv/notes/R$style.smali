.class public final Lcom/iliakplv/notes/R$style;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iliakplv/notes/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "style"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final AboutText:I = 0x7f0a0000

.field public static final LabelEditColorCheckBox:I = 0x7f0a0001

.field public static final LabelEditTitle:I = 0x7f0a0002

.field public static final MainActivity:I = 0x7f0a0003

.field public static final NoteDetails:I = 0x7f0a0004

.field public static final NoteDetailsLabel:I = 0x7f0a0005

.field public static final NoteDetailsText:I = 0x7f0a0006

.field public static final NoteDetailsText_Body:I = 0x7f0a0007

.field public static final NoteDetailsText_Title:I = 0x7f0a0008

.field public static final NoteListItem:I = 0x7f0a0009

.field public static final NoteListItemText:I = 0x7f0a000a

.field public static final NoteListItemText_Subtitle:I = 0x7f0a000b

.field public static final NoteListItemText_Title:I = 0x7f0a000c

.field public static final NoteListStatus:I = 0x7f0a000d


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/iliakplv/notes/R$style;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x47211b077d951b11L    # 4.440863255870613E34

    const-string v2, "com/iliakplv/notes/R$style"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/iliakplv/notes/R$style;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/iliakplv/notes/R$style;->$jacocoInit()[Z

    move-result-object v0

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
