.class public Lme/writeily/NoteActivity;
.super Landroid/support/v7/app/ActionBarActivity;
.source "NoteActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/writeily/NoteActivity$KeyboardBarSmartShortCutListener;,
        Lme/writeily/NoteActivity$KeyboardBarListener;
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final EMPTY_STRING:Ljava/lang/String; = ""


# instance fields
.field private content:Lme/writeily/editor/HighlightingEditor;

.field private context:Landroid/content/Context;

.field private isPreviewIncoming:Z

.field private keyboardBarView:Landroid/view/ViewGroup;

.field private note:Ljava/io/File;

.field private noteTitle:Landroid/widget/EditText;

.field private scrollView:Landroid/widget/ScrollView;

.field private targetDirectory:Ljava/lang/String;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lme/writeily/NoteActivity;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x6f0c619a6122dfc9L    # -5.176000955068811E-227

    const-string v2, "me/writeily/NoteActivity"

    const/16 v3, 0xa4

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lme/writeily/NoteActivity;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    invoke-static {}, Lme/writeily/NoteActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 51
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;-><init>()V

    .line 49
    iput-boolean v2, p0, Lme/writeily/NoteActivity;->isPreviewIncoming:Z

    .line 52
    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lme/writeily/NoteActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 54
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;-><init>()V

    .line 49
    const/4 v1, 0x0

    iput-boolean v1, p0, Lme/writeily/NoteActivity;->isPreviewIncoming:Z

    .line 55
    iput-object p1, p0, Lme/writeily/NoteActivity;->context:Landroid/content/Context;

    .line 56
    const/4 v1, 0x0

    iput-object v1, p0, Lme/writeily/NoteActivity;->note:Ljava/io/File;

    .line 57
    aput-boolean v2, v0, v2

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/io/File;)V
    .locals 3

    .prologue
    invoke-static {}, Lme/writeily/NoteActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 59
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;-><init>()V

    .line 49
    const/4 v1, 0x0

    iput-boolean v1, p0, Lme/writeily/NoteActivity;->isPreviewIncoming:Z

    .line 60
    iput-object p1, p0, Lme/writeily/NoteActivity;->context:Landroid/content/Context;

    .line 61
    iput-object p2, p0, Lme/writeily/NoteActivity;->note:Ljava/io/File;

    .line 62
    const/4 v1, 0x2

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$200(Lme/writeily/NoteActivity;)Lme/writeily/editor/HighlightingEditor;
    .locals 4

    .prologue
    invoke-static {}, Lme/writeily/NoteActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 37
    iget-object v1, p0, Lme/writeily/NoteActivity;->content:Lme/writeily/editor/HighlightingEditor;

    const/16 v2, 0xa3

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method private appendButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lme/writeily/NoteActivity;->$jacocoInit()[Z

    move-result-object v1

    .line 215
    invoke-virtual {p0}, Lme/writeily/NoteActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f030028

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v2, 0x55

    aput-boolean v5, v1, v2

    .line 216
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v2, 0x56

    aput-boolean v5, v1, v2

    .line 217
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v2, 0x57

    aput-boolean v5, v1, v2

    .line 219
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const v3, 0x7f0600b4

    invoke-virtual {p0, v3}, Lme/writeily/NoteActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x58

    aput-boolean v5, v1, v3

    .line 221
    const v3, 0x7f06007b

    invoke-virtual {p0, v3}, Lme/writeily/NoteActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x59

    aput-boolean v5, v1, v2

    .line 222
    invoke-virtual {p0}, Lme/writeily/NoteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x106000b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v2, 0x5a

    aput-boolean v5, v1, v2

    .line 227
    :goto_0
    iget-object v2, p0, Lme/writeily/NoteActivity;->keyboardBarView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 228
    const/16 v0, 0x5c

    aput-boolean v5, v1, v0

    return-void

    .line 224
    :cond_0
    invoke-virtual {p0}, Lme/writeily/NoteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a001b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v2, 0x5b

    aput-boolean v5, v1, v2

    goto :goto_0
.end method

.method private appendRegularBracketShortcuts()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    invoke-static {}, Lme/writeily/NoteActivity;->$jacocoInit()[Z

    move-result-object v1

    .line 202
    sget-object v2, Lme/writeily/model/Constants;->KEYBOARD_SHORTCUTS_BRACKETS:[Ljava/lang/String;

    array-length v3, v2

    const/4 v0, 0x0

    const/16 v4, 0x4d

    aput-boolean v7, v1, v4

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    const/16 v5, 0x4e

    aput-boolean v7, v1, v5

    .line 203
    new-instance v5, Lme/writeily/NoteActivity$KeyboardBarListener;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lme/writeily/NoteActivity$KeyboardBarListener;-><init>(Lme/writeily/NoteActivity;Lme/writeily/NoteActivity$1;)V

    invoke-direct {p0, v4, v5}, Lme/writeily/NoteActivity;->appendButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 202
    add-int/lit8 v0, v0, 0x1

    const/16 v4, 0x4f

    aput-boolean v7, v1, v4

    goto :goto_0

    .line 206
    :cond_0
    const/16 v0, 0x50

    aput-boolean v7, v1, v0

    return-void
.end method

.method private appendRegularShortcuts()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    invoke-static {}, Lme/writeily/NoteActivity;->$jacocoInit()[Z

    move-result-object v1

    .line 196
    sget-object v2, Lme/writeily/model/Constants;->KEYBOARD_SHORTCUTS:[Ljava/lang/String;

    array-length v3, v2

    const/4 v0, 0x0

    const/16 v4, 0x49

    aput-boolean v7, v1, v4

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    const/16 v5, 0x4a

    aput-boolean v7, v1, v5

    .line 197
    new-instance v5, Lme/writeily/NoteActivity$KeyboardBarListener;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lme/writeily/NoteActivity$KeyboardBarListener;-><init>(Lme/writeily/NoteActivity;Lme/writeily/NoteActivity$1;)V

    invoke-direct {p0, v4, v5}, Lme/writeily/NoteActivity;->appendButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 196
    add-int/lit8 v0, v0, 0x1

    const/16 v4, 0x4b

    aput-boolean v7, v1, v4

    goto :goto_0

    .line 199
    :cond_0
    const/16 v0, 0x4c

    aput-boolean v7, v1, v0

    return-void
.end method

.method private appendSmartBracketShortcuts()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    invoke-static {}, Lme/writeily/NoteActivity;->$jacocoInit()[Z

    move-result-object v1

    .line 209
    sget-object v2, Lme/writeily/model/Constants;->KEYBOARD_SMART_SHORTCUTS:[Ljava/lang/String;

    array-length v3, v2

    const/4 v0, 0x0

    const/16 v4, 0x51

    aput-boolean v7, v1, v4

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    const/16 v5, 0x52

    aput-boolean v7, v1, v5

    .line 210
    new-instance v5, Lme/writeily/NoteActivity$KeyboardBarSmartShortCutListener;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lme/writeily/NoteActivity$KeyboardBarSmartShortCutListener;-><init>(Lme/writeily/NoteActivity;Lme/writeily/NoteActivity$1;)V

    invoke-direct {p0, v4, v5}, Lme/writeily/NoteActivity;->appendButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 209
    add-int/lit8 v0, v0, 0x1

    const/16 v4, 0x53

    aput-boolean v7, v1, v4

    goto :goto_0

    .line 212
    :cond_0
    const/16 v0, 0x54

    aput-boolean v7, v1, v0

    return-void
.end method

.method private isSmartShortcutsActivated()Z
    .locals 4

    .prologue
    invoke-static {}, Lme/writeily/NoteActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 231
    iget-object v1, p0, Lme/writeily/NoteActivity;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const v2, 0x7f0600b3

    invoke-virtual {p0, v2}, Lme/writeily/NoteActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const/16 v2, 0x5d

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method private normalizeFilename(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    const/16 v3, 0x14

    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-static {}, Lme/writeily/NoteActivity;->$jacocoInit()[Z

    move-result-object v1

    .line 324
    const/16 v2, 0x97

    aput-boolean v6, v1, v2

    .line 325
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x98

    aput-boolean v6, v1, v2

    move-object v0, p2

    .line 336
    .local v0, "filename":Ljava/lang/String;
    :goto_0
    const-string v2, "[\\\\/:\"*?<>|]+"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x9e

    aput-boolean v6, v1, v2

    .line 338
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    const/16 v2, 0x9f

    aput-boolean v6, v1, v2

    .line 341
    :goto_1
    const/16 v2, 0xa2

    aput-boolean v6, v1, v2

    :goto_2
    return-object v0

    .line 325
    .end local v0    # "filename":Ljava/lang/String;
    :cond_0
    const/16 v2, 0x99

    aput-boolean v6, v1, v2

    .line 326
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 327
    const/4 v0, 0x0

    const/16 v2, 0x9a

    aput-boolean v6, v1, v2

    goto :goto_2

    .line 329
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v3, :cond_2

    const/16 v2, 0x9b

    aput-boolean v6, v1, v2

    .line 330
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "filename":Ljava/lang/String;
    const/16 v2, 0x9c

    aput-boolean v6, v1, v2

    goto :goto_0

    .line 332
    .end local v0    # "filename":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "filename":Ljava/lang/String;
    const/16 v2, 0x9d

    aput-boolean v6, v1, v2

    goto :goto_0

    .line 338
    :cond_3
    const/16 v2, 0xa0

    aput-boolean v6, v1, v2

    .line 339
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Writeily - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x6

    invoke-virtual {v3, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xa1

    aput-boolean v6, v1, v2

    goto :goto_1
.end method

.method private openFromEditAction(Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lme/writeily/NoteActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 112
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    const/16 v2, 0x24

    aput-boolean v3, v0, v2

    .line 113
    invoke-direct {p0, v1}, Lme/writeily/NoteActivity;->readFileUriFromIntent(Landroid/net/Uri;)V

    .line 114
    const/16 v1, 0x25

    aput-boolean v3, v0, v1

    return-void
.end method

.method private openFromSendAction(Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lme/writeily/NoteActivity;->$jacocoInit()[Z

    move-result-object v1

    .line 107
    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    const/16 v2, 0x22

    aput-boolean v3, v1, v2

    .line 108
    invoke-direct {p0, v0}, Lme/writeily/NoteActivity;->readFileUriFromIntent(Landroid/net/Uri;)V

    .line 109
    const/16 v0, 0x23

    aput-boolean v3, v1, v0

    return-void
.end method

.method private previewNote()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lme/writeily/NoteActivity;->$jacocoInit()[Z

    move-result-object v1

    .line 259
    invoke-direct {p0}, Lme/writeily/NoteActivity;->saveNote()V

    const/16 v2, 0x6f

    aput-boolean v6, v1, v2

    .line 260
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lme/writeily/PreviewActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 263
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lme/writeily/NoteActivity;->note:Ljava/io/File;

    if-nez v2, :cond_0

    const/16 v2, 0x70

    aput-boolean v6, v1, v2

    .line 268
    :goto_0
    const-string v2, "note_key"

    iget-object v3, p0, Lme/writeily/NoteActivity;->note:Ljava/io/File;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/16 v2, 0x74

    aput-boolean v6, v1, v2

    .line 269
    const-string v2, "md_preview_key"

    iget-object v3, p0, Lme/writeily/NoteActivity;->content:Lme/writeily/editor/HighlightingEditor;

    invoke-virtual {v3}, Lme/writeily/editor/HighlightingEditor;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\n-"

    const-string v5, "\n\n-"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 271
    iput-boolean v6, p0, Lme/writeily/NoteActivity;->isPreviewIncoming:Z

    const/16 v2, 0x75

    aput-boolean v6, v1, v2

    .line 272
    invoke-virtual {p0, v0}, Lme/writeily/NoteActivity;->startActivity(Landroid/content/Intent;)V

    .line 273
    const/16 v2, 0x76

    aput-boolean v6, v1, v2

    return-void

    .line 263
    :cond_0
    const/16 v2, 0x71

    aput-boolean v6, v1, v2

    .line 264
    invoke-static {}, Lme/writeily/model/WriteilySingleton;->getInstance()Lme/writeily/model/WriteilySingleton;

    move-result-object v2

    iget-object v3, p0, Lme/writeily/NoteActivity;->note:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Lme/writeily/model/WriteilySingleton;->getUriFromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    const/16 v3, 0x72

    aput-boolean v6, v1, v3

    .line 265
    const-string v3, "md_preview_base"

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v2, 0x73

    aput-boolean v6, v1, v2

    goto :goto_0
.end method

.method private readFileUriFromIntent(Landroid/net/Uri;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lme/writeily/NoteActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 117
    if-nez p1, :cond_0

    const/16 v1, 0x26

    aput-boolean v3, v0, v1

    .line 121
    :goto_0
    const/16 v1, 0x2a

    aput-boolean v3, v0, v1

    return-void

    .line 117
    :cond_0
    const/16 v1, 0x27

    aput-boolean v3, v0, v1

    .line 118
    invoke-static {}, Lme/writeily/model/WriteilySingleton;->getInstance()Lme/writeily/model/WriteilySingleton;

    move-result-object v1

    invoke-virtual {v1, p1}, Lme/writeily/model/WriteilySingleton;->getFileFromUri(Landroid/net/Uri;)Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Lme/writeily/NoteActivity;->note:Ljava/io/File;

    const/16 v1, 0x28

    aput-boolean v3, v0, v1

    .line 119
    iget-object v1, p0, Lme/writeily/NoteActivity;->content:Lme/writeily/editor/HighlightingEditor;

    invoke-static {}, Lme/writeily/model/WriteilySingleton;->getInstance()Lme/writeily/model/WriteilySingleton;

    move-result-object v2

    invoke-virtual {v2, p1, p0}, Lme/writeily/model/WriteilySingleton;->readFileUri(Landroid/net/Uri;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lme/writeily/editor/HighlightingEditor;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0x29

    aput-boolean v3, v0, v1

    goto :goto_0
.end method

.method private readNote()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lme/writeily/NoteActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 102
    iget-object v1, p0, Lme/writeily/NoteActivity;->note:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v1

    const/16 v2, 0x20

    aput-boolean v3, v0, v2

    .line 103
    invoke-static {}, Lme/writeily/model/WriteilySingleton;->getInstance()Lme/writeily/model/WriteilySingleton;

    move-result-object v2

    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v2, v1, p0}, Lme/writeily/model/WriteilySingleton;->readFileUri(Landroid/net/Uri;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x21

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method private saveNote()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    invoke-static {}, Lme/writeily/NoteActivity;->$jacocoInit()[Z

    move-result-object v2

    .line 292
    :try_start_0
    iget-object v1, p0, Lme/writeily/NoteActivity;->content:Lme/writeily/editor/HighlightingEditor;

    invoke-virtual {v1}, Lme/writeily/editor/HighlightingEditor;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v1, 0x7e

    const/4 v4, 0x1

    aput-boolean v4, v2, v1

    .line 293
    iget-object v1, p0, Lme/writeily/NoteActivity;->noteTitle:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v3, v1}, Lme/writeily/NoteActivity;->normalizeFilename(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 294
    .local v0, "filename":Ljava/lang/String;
    if-eqz v0, :cond_0

    const/16 v1, 0x7f

    const/4 v4, 0x1

    aput-boolean v4, v2, v1

    .line 296
    iget-object v1, p0, Lme/writeily/NoteActivity;->targetDirectory:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lme/writeily/NoteActivity;->targetDirectory:Ljava/lang/String;

    const/16 v4, 0x81

    const/4 v5, 0x1

    aput-boolean v5, v2, v4

    :goto_0
    const/16 v4, 0x83

    const/4 v5, 0x1

    aput-boolean v5, v2, v4

    .line 297
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".md"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x84

    const/4 v5, 0x1

    aput-boolean v5, v2, v1

    .line 298
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v5, 0x85

    const/4 v6, 0x1

    aput-boolean v6, v2, v5

    .line 299
    new-instance v5, Ljava/io/OutputStreamWriter;

    invoke-direct {v5, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/16 v6, 0x86

    const/4 v7, 0x1

    aput-boolean v7, v2, v6

    .line 301
    invoke-virtual {v5, v3}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    const/16 v3, 0x87

    const/4 v6, 0x1

    aput-boolean v6, v2, v3

    .line 302
    invoke-virtual {v5}, Ljava/io/OutputStreamWriter;->flush()V

    const/16 v3, 0x88

    const/4 v6, 0x1

    aput-boolean v6, v2, v3

    .line 304
    invoke-virtual {v5}, Ljava/io/OutputStreamWriter;->close()V

    const/16 v3, 0x89

    const/4 v5, 0x1

    aput-boolean v5, v2, v3

    .line 305
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    const/16 v1, 0x8a

    const/4 v3, 0x1

    aput-boolean v3, v2, v1

    .line 307
    iget-object v1, p0, Lme/writeily/NoteActivity;->note:Ljava/io/File;

    if-nez v1, :cond_2

    const/16 v1, 0x8b

    const/4 v3, 0x1

    aput-boolean v3, v2, v1

    .line 310
    :goto_1
    invoke-direct {p0}, Lme/writeily/NoteActivity;->updateWidgets()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    const/16 v1, 0x90

    aput-boolean v8, v2, v1

    .line 314
    :goto_2
    const/16 v1, 0x93

    aput-boolean v8, v2, v1

    :goto_3
    return-void

    .line 294
    :cond_0
    const/16 v1, 0x80

    aput-boolean v8, v2, v1

    goto :goto_3

    .line 296
    :cond_1
    :try_start_1
    iget-object v1, p0, Lme/writeily/NoteActivity;->note:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x82

    const/4 v5, 0x1

    aput-boolean v5, v2, v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 311
    :catch_0
    move-exception v1

    const/16 v3, 0x91

    aput-boolean v8, v2, v3

    .line 312
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    const/16 v1, 0x92

    aput-boolean v8, v2, v1

    goto :goto_2

    .line 307
    :cond_2
    :try_start_2
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lme/writeily/NoteActivity;->note:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x8c

    const/4 v3, 0x1

    aput-boolean v3, v2, v1

    goto :goto_1

    :cond_3
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_4

    const/16 v1, 0x8d

    const/4 v3, 0x1

    aput-boolean v3, v2, v1

    goto :goto_1

    :cond_4
    const/16 v1, 0x8e

    const/4 v3, 0x1

    aput-boolean v3, v2, v1

    .line 308
    iget-object v1, p0, Lme/writeily/NoteActivity;->note:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    const/16 v1, 0x8f

    const/4 v3, 0x1

    aput-boolean v3, v2, v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method

.method private setupAppearancePreferences()V
    .locals 9

    .prologue
    const v8, 0x7f0a0013

    const v7, 0x106000b

    const/4 v6, 0x1

    invoke-static {}, Lme/writeily/NoteActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 235
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const v2, 0x7f0600b4

    invoke-virtual {p0, v2}, Lme/writeily/NoteActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x5e

    aput-boolean v6, v0, v2

    .line 236
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const v3, 0x7f0600a5

    invoke-virtual {p0, v3}, Lme/writeily/NoteActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x5f

    aput-boolean v6, v0, v3

    .line 237
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const v4, 0x7f0600a6

    invoke-virtual {p0, v4}, Lme/writeily/NoteActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x60

    aput-boolean v6, v0, v4

    .line 239
    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v3, 0x61

    aput-boolean v6, v0, v3

    .line 243
    :goto_0
    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v2, 0x64

    aput-boolean v6, v0, v2

    .line 247
    :goto_1
    const v2, 0x7f06007b

    invoke-virtual {p0, v2}, Lme/writeily/NoteActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x67

    aput-boolean v6, v0, v1

    .line 248
    iget-object v1, p0, Lme/writeily/NoteActivity;->content:Lme/writeily/editor/HighlightingEditor;

    invoke-virtual {p0}, Lme/writeily/NoteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lme/writeily/editor/HighlightingEditor;->setBackgroundColor(I)V

    const/16 v1, 0x68

    aput-boolean v6, v0, v1

    .line 249
    iget-object v1, p0, Lme/writeily/NoteActivity;->content:Lme/writeily/editor/HighlightingEditor;

    invoke-virtual {p0}, Lme/writeily/NoteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lme/writeily/editor/HighlightingEditor;->setTextColor(I)V

    const/16 v1, 0x69

    aput-boolean v6, v0, v1

    .line 250
    iget-object v1, p0, Lme/writeily/NoteActivity;->keyboardBarView:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lme/writeily/NoteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a001b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    const/16 v1, 0x6a

    aput-boolean v6, v0, v1

    .line 256
    :goto_2
    const/16 v1, 0x6e

    aput-boolean v6, v0, v1

    return-void

    .line 239
    :cond_0
    const/16 v4, 0x62

    aput-boolean v6, v0, v4

    .line 240
    iget-object v4, p0, Lme/writeily/NoteActivity;->content:Lme/writeily/editor/HighlightingEditor;

    const/4 v5, 0x2

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-virtual {v4, v5, v3}, Lme/writeily/editor/HighlightingEditor;->setTextSize(IF)V

    const/16 v3, 0x63

    aput-boolean v6, v0, v3

    goto :goto_0

    .line 243
    :cond_1
    const/16 v3, 0x65

    aput-boolean v6, v0, v3

    .line 244
    iget-object v3, p0, Lme/writeily/NoteActivity;->content:Lme/writeily/editor/HighlightingEditor;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v3, v2}, Lme/writeily/editor/HighlightingEditor;->setTypeface(Landroid/graphics/Typeface;)V

    const/16 v2, 0x66

    aput-boolean v6, v0, v2

    goto :goto_1

    .line 252
    :cond_2
    iget-object v1, p0, Lme/writeily/NoteActivity;->content:Lme/writeily/editor/HighlightingEditor;

    invoke-virtual {p0}, Lme/writeily/NoteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lme/writeily/editor/HighlightingEditor;->setBackgroundColor(I)V

    const/16 v1, 0x6b

    aput-boolean v6, v0, v1

    .line 253
    iget-object v1, p0, Lme/writeily/NoteActivity;->content:Lme/writeily/editor/HighlightingEditor;

    invoke-virtual {p0}, Lme/writeily/NoteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lme/writeily/editor/HighlightingEditor;->setTextColor(I)V

    const/16 v1, 0x6c

    aput-boolean v6, v0, v1

    .line 254
    iget-object v1, p0, Lme/writeily/NoteActivity;->keyboardBarView:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lme/writeily/NoteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0021

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    const/16 v1, 0x6d

    aput-boolean v6, v0, v1

    goto :goto_2
.end method

.method private setupKeyboardBar()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lme/writeily/NoteActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 181
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const v2, 0x7f0600b2

    invoke-virtual {p0, v2}, Lme/writeily/NoteActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const/16 v2, 0x3d

    aput-boolean v3, v0, v2

    .line 183
    if-nez v1, :cond_0

    const/16 v2, 0x3e

    aput-boolean v3, v0, v2

    .line 190
    :goto_0
    if-eqz v1, :cond_3

    const/16 v1, 0x45

    aput-boolean v3, v0, v1

    .line 193
    :goto_1
    const/16 v1, 0x48

    aput-boolean v3, v0, v1

    return-void

    .line 183
    :cond_0
    iget-object v2, p0, Lme/writeily/NoteActivity;->keyboardBarView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x3f

    aput-boolean v3, v0, v2

    goto :goto_0

    :cond_1
    const/16 v1, 0x40

    aput-boolean v3, v0, v1

    .line 184
    invoke-direct {p0}, Lme/writeily/NoteActivity;->appendRegularShortcuts()V

    const/16 v1, 0x41

    aput-boolean v3, v0, v1

    .line 185
    invoke-direct {p0}, Lme/writeily/NoteActivity;->isSmartShortcutsActivated()Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x42

    aput-boolean v3, v0, v1

    .line 186
    invoke-direct {p0}, Lme/writeily/NoteActivity;->appendSmartBracketShortcuts()V

    const/16 v1, 0x43

    aput-boolean v3, v0, v1

    goto :goto_1

    .line 188
    :cond_2
    invoke-direct {p0}, Lme/writeily/NoteActivity;->appendRegularBracketShortcuts()V

    const/16 v1, 0x44

    aput-boolean v3, v0, v1

    goto :goto_1

    .line 190
    :cond_3
    const/16 v1, 0x46

    aput-boolean v3, v0, v1

    .line 191
    const v1, 0x7f0c0064

    invoke-virtual {p0, v1}, Lme/writeily/NoteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    const/16 v1, 0x47

    aput-boolean v3, v0, v1

    goto :goto_1
.end method

.method private shareNote()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lme/writeily/NoteActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 276
    invoke-direct {p0}, Lme/writeily/NoteActivity;->saveNote()V

    const/16 v1, 0x77

    aput-boolean v4, v0, v1

    .line 278
    iget-object v1, p0, Lme/writeily/NoteActivity;->content:Lme/writeily/editor/HighlightingEditor;

    invoke-virtual {v1}, Lme/writeily/editor/HighlightingEditor;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x78

    aput-boolean v4, v0, v2

    .line 280
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const/16 v3, 0x79

    aput-boolean v4, v0, v3

    .line 281
    const-string v3, "android.intent.action.SEND"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v3, 0x7a

    aput-boolean v4, v0, v3

    .line 282
    const-string v3, "android.intent.extra.TEXT"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x7b

    aput-boolean v4, v0, v1

    .line 283
    const-string v1, "text/plain"

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x7c

    aput-boolean v4, v0, v1

    .line 284
    invoke-virtual {p0}, Lme/writeily/NoteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f060074

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lme/writeily/NoteActivity;->startActivity(Landroid/content/Intent;)V

    .line 285
    const/16 v1, 0x7d

    aput-boolean v4, v0, v1

    return-void
.end method

.method private updateWidgets()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lme/writeily/NoteActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 317
    iget-object v1, p0, Lme/writeily/NoteActivity;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    const/16 v2, 0x94

    aput-boolean v5, v0, v2

    .line 318
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p0, Lme/writeily/NoteActivity;->context:Landroid/content/Context;

    const-class v4, Lme/writeily/widget/WriteilyWidgetProvider;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v2

    const/16 v3, 0x95

    aput-boolean v5, v0, v3

    .line 320
    const v3, 0x7f0c009d

    invoke-virtual {v1, v2, v3}, Landroid/appwidget/AppWidgetManager;->notifyAppWidgetViewDataChanged([II)V

    .line 321
    const/16 v1, 0x96

    aput-boolean v5, v0, v1

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lme/writeily/NoteActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 149
    invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->onBackPressed()V

    const/16 v1, 0x31

    aput-boolean v3, v0, v1

    .line 150
    const v1, 0x7f040010

    const v2, 0x7f04000c

    invoke-virtual {p0, v1, v2}, Lme/writeily/NoteActivity;->overridePendingTransition(II)V

    .line 151
    const/16 v1, 0x32

    aput-boolean v3, v0, v1

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lme/writeily/NoteActivity;->$jacocoInit()[Z

    move-result-object v2

    .line 66
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 v1, 0x3

    aput-boolean v6, v2, v1

    .line 67
    const v1, 0x7f03001d

    invoke-virtual {p0, v1}, Lme/writeily/NoteActivity;->setContentView(I)V

    const/4 v1, 0x4

    aput-boolean v6, v2, v1

    .line 69
    const v1, 0x7f0c005f

    invoke-virtual {p0, v1}, Lme/writeily/NoteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    .line 70
    .local v0, "toolbar":Landroid/support/v7/widget/Toolbar;
    if-nez v0, :cond_0

    const/4 v1, 0x5

    aput-boolean v6, v2, v1

    .line 75
    :goto_0
    invoke-virtual {p0}, Lme/writeily/NoteActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lme/writeily/NoteActivity;->context:Landroid/content/Context;

    const/16 v1, 0x9

    aput-boolean v6, v2, v1

    .line 76
    const v1, 0x7f0c0063

    invoke-virtual {p0, v1}, Lme/writeily/NoteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lme/writeily/editor/HighlightingEditor;

    iput-object v1, p0, Lme/writeily/NoteActivity;->content:Lme/writeily/editor/HighlightingEditor;

    const/16 v1, 0xa

    aput-boolean v6, v2, v1

    .line 77
    const v1, 0x7f0c0095

    invoke-virtual {p0, v1}, Lme/writeily/NoteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lme/writeily/NoteActivity;->noteTitle:Landroid/widget/EditText;

    const/16 v1, 0xb

    aput-boolean v6, v2, v1

    .line 78
    const v1, 0x7f0c0062

    invoke-virtual {p0, v1}, Lme/writeily/NoteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    iput-object v1, p0, Lme/writeily/NoteActivity;->scrollView:Landroid/widget/ScrollView;

    const/16 v1, 0xc

    aput-boolean v6, v2, v1

    .line 79
    const v1, 0x7f0c0065

    invoke-virtual {p0, v1}, Lme/writeily/NoteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lme/writeily/NoteActivity;->keyboardBarView:Landroid/view/ViewGroup;

    const/16 v1, 0xd

    aput-boolean v6, v2, v1

    .line 81
    invoke-virtual {p0}, Lme/writeily/NoteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const/16 v3, 0xe

    aput-boolean v6, v2, v3

    .line 82
    const-string v3, "note_source_dir"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lme/writeily/NoteActivity;->targetDirectory:Ljava/lang/String;

    const/16 v3, 0xf

    aput-boolean v6, v2, v3

    .line 84
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    aput-boolean v6, v2, v4

    .line 85
    invoke-virtual {v1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x11

    aput-boolean v6, v2, v5

    .line 87
    const-string v5, "android.intent.action.SEND"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const/16 v5, 0x12

    aput-boolean v6, v2, v5

    .line 89
    :goto_1
    const-string v5, "android.intent.action.EDIT"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const/16 v1, 0x16

    aput-boolean v6, v2, v1

    .line 92
    :goto_2
    invoke-virtual {p0}, Lme/writeily/NoteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "note_key"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    iput-object v1, p0, Lme/writeily/NoteActivity;->note:Ljava/io/File;

    const/16 v1, 0x1a

    aput-boolean v6, v2, v1

    .line 95
    :goto_3
    iget-object v1, p0, Lme/writeily/NoteActivity;->note:Ljava/io/File;

    if-nez v1, :cond_5

    const/16 v1, 0x1b

    aput-boolean v6, v2, v1

    .line 99
    :goto_4
    const/16 v1, 0x1f

    aput-boolean v6, v2, v1

    return-void

    .line 70
    :cond_0
    const/4 v1, 0x6

    aput-boolean v6, v2, v1

    .line 71
    invoke-virtual {p0, v0}, Lme/writeily/NoteActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    const/4 v1, 0x7

    aput-boolean v6, v2, v1

    .line 72
    invoke-virtual {p0}, Lme/writeily/NoteActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const/16 v1, 0x8

    aput-boolean v6, v2, v1

    goto/16 :goto_0

    .line 87
    :cond_1
    if-nez v4, :cond_2

    const/16 v5, 0x13

    aput-boolean v6, v2, v5

    goto :goto_1

    :cond_2
    const/16 v3, 0x14

    aput-boolean v6, v2, v3

    .line 88
    invoke-direct {p0, v1}, Lme/writeily/NoteActivity;->openFromSendAction(Landroid/content/Intent;)V

    const/16 v1, 0x15

    aput-boolean v6, v2, v1

    goto :goto_3

    .line 89
    :cond_3
    if-nez v4, :cond_4

    const/16 v1, 0x17

    aput-boolean v6, v2, v1

    goto :goto_2

    :cond_4
    const/16 v3, 0x18

    aput-boolean v6, v2, v3

    .line 90
    invoke-direct {p0, v1}, Lme/writeily/NoteActivity;->openFromEditAction(Landroid/content/Intent;)V

    const/16 v1, 0x19

    aput-boolean v6, v2, v1

    goto :goto_3

    .line 95
    :cond_5
    const/16 v1, 0x1c

    aput-boolean v6, v2, v1

    .line 96
    iget-object v1, p0, Lme/writeily/NoteActivity;->content:Lme/writeily/editor/HighlightingEditor;

    invoke-direct {p0}, Lme/writeily/NoteActivity;->readNote()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lme/writeily/editor/HighlightingEditor;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0x1d

    aput-boolean v6, v2, v1

    .line 97
    iget-object v1, p0, Lme/writeily/NoteActivity;->noteTitle:Landroid/widget/EditText;

    iget-object v3, p0, Lme/writeily/NoteActivity;->note:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "((?i)\\.md$)"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0x1e

    aput-boolean v6, v2, v1

    goto :goto_4
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lme/writeily/NoteActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 125
    invoke-virtual {p0}, Lme/writeily/NoteActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const v2, 0x7f0e0003

    invoke-virtual {v1, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 126
    const/16 v1, 0x2b

    aput-boolean v3, v0, v1

    return v3
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    invoke-static {}, Lme/writeily/NoteActivity;->$jacocoInit()[Z

    move-result-object v2

    .line 131
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 143
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    const/16 v3, 0x30

    aput-boolean v0, v2, v3

    move v0, v1

    :goto_0
    return v0

    .line 133
    :sswitch_0
    invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->onBackPressed()V

    const/16 v1, 0x2c

    aput-boolean v0, v2, v1

    .line 134
    const v1, 0x7f040010

    const v3, 0x7f04000c

    invoke-virtual {p0, v1, v3}, Lme/writeily/NoteActivity;->overridePendingTransition(II)V

    .line 135
    const/16 v1, 0x2d

    aput-boolean v0, v2, v1

    goto :goto_0

    .line 137
    :sswitch_1
    invoke-direct {p0}, Lme/writeily/NoteActivity;->shareNote()V

    .line 138
    const/16 v1, 0x2e

    aput-boolean v0, v2, v1

    goto :goto_0

    .line 140
    :sswitch_2
    invoke-direct {p0}, Lme/writeily/NoteActivity;->previewNote()V

    .line 141
    const/16 v1, 0x2f

    aput-boolean v0, v2, v1

    goto :goto_0

    .line 131
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0c00a6 -> :sswitch_1
        0x7f0c00a7 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lme/writeily/NoteActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 171
    invoke-direct {p0}, Lme/writeily/NoteActivity;->saveNote()V

    .line 173
    iget-boolean v1, p0, Lme/writeily/NoteActivity;->isPreviewIncoming:Z

    if-nez v1, :cond_0

    const/16 v1, 0x39

    aput-boolean v2, v0, v1

    .line 177
    :goto_0
    invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->onPause()V

    .line 178
    const/16 v1, 0x3c

    aput-boolean v2, v0, v1

    return-void

    .line 173
    :cond_0
    const/16 v1, 0x3a

    aput-boolean v2, v0, v1

    .line 174
    invoke-virtual {p0}, Lme/writeily/NoteActivity;->finish()V

    const/16 v1, 0x3b

    aput-boolean v2, v0, v1

    goto :goto_0
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lme/writeily/NoteActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 161
    invoke-direct {p0}, Lme/writeily/NoteActivity;->setupKeyboardBar()V

    const/16 v1, 0x34

    aput-boolean v3, v0, v1

    .line 162
    invoke-direct {p0}, Lme/writeily/NoteActivity;->setupAppearancePreferences()V

    const/16 v1, 0x35

    aput-boolean v3, v0, v1

    .line 164
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const/16 v2, 0x36

    aput-boolean v3, v0, v2

    .line 165
    const-string v2, "share_broadcast_tag"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/16 v1, 0x37

    aput-boolean v3, v0, v1

    .line 166
    invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->onResume()V

    .line 167
    const/16 v1, 0x38

    aput-boolean v3, v0, v1

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    invoke-static {}, Lme/writeily/NoteActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 155
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 156
    const/16 v1, 0x33

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
