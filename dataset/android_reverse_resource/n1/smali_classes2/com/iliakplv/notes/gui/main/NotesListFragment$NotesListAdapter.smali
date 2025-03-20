.class Lcom/iliakplv/notes/gui/main/NotesListFragment$NotesListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "NotesListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iliakplv/notes/gui/main/NotesListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotesListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/iliakplv/notes/notes/AbstractNote;",
        ">;"
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private final LABELS_IDS:[I

.field final synthetic this$0:Lcom/iliakplv/notes/gui/main/NotesListFragment;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/iliakplv/notes/gui/main/NotesListFragment$NotesListAdapter;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x411388105988d379L    # -1.3574838887550504E-5

    const-string v2, "com/iliakplv/notes/gui/main/NotesListFragment$NotesListAdapter"

    const/16 v3, 0x28

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/iliakplv/notes/gui/main/NotesListFragment$NotesListAdapter;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Lcom/iliakplv/notes/gui/main/NotesListFragment;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-static {}, Lcom/iliakplv/notes/gui/main/NotesListFragment$NotesListAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 238
    iput-object p1, p0, Lcom/iliakplv/notes/gui/main/NotesListFragment$NotesListAdapter;->this$0:Lcom/iliakplv/notes/gui/main/NotesListFragment;

    aput-boolean v3, v0, v4

    .line 239
    invoke-static {p1}, Lcom/iliakplv/notes/gui/main/NotesListFragment;->access$000(Lcom/iliakplv/notes/gui/main/NotesListFragment;)Lcom/iliakplv/notes/gui/main/MainActivity;

    move-result-object v1

    invoke-static {p1}, Lcom/iliakplv/notes/gui/main/NotesListFragment;->access$100(Lcom/iliakplv/notes/gui/main/NotesListFragment;)Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v1, v4, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 230
    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/iliakplv/notes/gui/main/NotesListFragment$NotesListAdapter;->LABELS_IDS:[I

    .line 240
    aput-boolean v3, v0, v3

    return-void

    .line 230
    :array_0
    .array-data 4
        0x7f0c001e
        0x7f0c001d
        0x7f0c001c
        0x7f0c001b
    .end array-data
.end method

.method private getLetterForLabelName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/iliakplv/notes/gui/main/NotesListFragment$NotesListAdapter;->$jacocoInit()[Z

    move-result-object v1

    .line 302
    invoke-static {p1}, Lcom/iliakplv/notes/utils/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    const/16 v2, 0x25

    aput-boolean v3, v1, v2

    :goto_0
    const/16 v2, 0x27

    aput-boolean v3, v1, v2

    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x26

    aput-boolean v3, v1, v2

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 4

    .prologue
    invoke-static {}, Lcom/iliakplv/notes/gui/main/NotesListFragment$NotesListAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 244
    iget-object v1, p0, Lcom/iliakplv/notes/gui/main/NotesListFragment$NotesListAdapter;->this$0:Lcom/iliakplv/notes/gui/main/NotesListFragment;

    invoke-static {v1}, Lcom/iliakplv/notes/gui/main/NotesListFragment;->access$100(Lcom/iliakplv/notes/gui/main/NotesListFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p2, "view"    # Landroid/view/View;

    .prologue
    invoke-static {}, Lcom/iliakplv/notes/gui/main/NotesListFragment$NotesListAdapter;->$jacocoInit()[Z

    move-result-object v5

    .line 250
    if-eqz p2, :cond_0

    .line 251
    const/4 v2, 0x3

    const/4 v3, 0x1

    aput-boolean v3, v5, v2

    .line 257
    .end local p2    # "view":Landroid/view/View;
    :goto_0
    iget-object v2, p0, Lcom/iliakplv/notes/gui/main/NotesListFragment$NotesListAdapter;->this$0:Lcom/iliakplv/notes/gui/main/NotesListFragment;

    invoke-static {v2}, Lcom/iliakplv/notes/gui/main/NotesListFragment;->access$100(Lcom/iliakplv/notes/gui/main/NotesListFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iliakplv/notes/notes/AbstractNote;

    const/4 v3, 0x5

    const/4 v4, 0x1

    aput-boolean v4, v5, v3

    .line 258
    const v3, 0x7f0c001a

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const/4 v4, 0x6

    const/4 v6, 0x1

    aput-boolean v6, v5, v4

    .line 259
    const v4, 0x7f0c0020

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const/4 v6, 0x7

    const/4 v7, 0x1

    aput-boolean v7, v5, v6

    .line 260
    invoke-static {v2}, Lcom/iliakplv/notes/notes/NotesUtils;->getTitleForNoteInList(Lcom/iliakplv/notes/notes/AbstractNote;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v6, 0x8

    const/4 v7, 0x1

    aput-boolean v7, v5, v6

    .line 261
    invoke-static {v2}, Lcom/iliakplv/notes/notes/NotesUtils;->isNoteTitleBlank(Lcom/iliakplv/notes/notes/AbstractNote;)Z

    move-result v6

    if-nez v6, :cond_1

    const/16 v6, 0x9

    const/4 v7, 0x1

    aput-boolean v7, v5, v6

    .line 262
    iget-object v6, p0, Lcom/iliakplv/notes/gui/main/NotesListFragment$NotesListAdapter;->this$0:Lcom/iliakplv/notes/gui/main/NotesListFragment;

    invoke-virtual {v6}, Lcom/iliakplv/notes/gui/main/NotesListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f07000d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 263
    const/4 v6, 0x0

    iget-object v7, p0, Lcom/iliakplv/notes/gui/main/NotesListFragment$NotesListAdapter;->this$0:Lcom/iliakplv/notes/gui/main/NotesListFragment;

    const/16 v8, 0xa

    const/4 v9, 0x1

    aput-boolean v9, v5, v8

    .line 264
    invoke-virtual {v7}, Lcom/iliakplv/notes/gui/main/NotesListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f080017

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    const/16 v8, 0xb

    const/4 v9, 0x1

    aput-boolean v9, v5, v8

    .line 263
    invoke-virtual {v3, v6, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 v3, 0xc

    const/4 v6, 0x1

    aput-boolean v6, v5, v3

    .line 265
    iget-object v3, p0, Lcom/iliakplv/notes/gui/main/NotesListFragment$NotesListAdapter;->this$0:Lcom/iliakplv/notes/gui/main/NotesListFragment;

    invoke-virtual {v3}, Lcom/iliakplv/notes/gui/main/NotesListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f07000e

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 266
    const/4 v3, 0x0

    iget-object v6, p0, Lcom/iliakplv/notes/gui/main/NotesListFragment$NotesListAdapter;->this$0:Lcom/iliakplv/notes/gui/main/NotesListFragment;

    const/16 v7, 0xd

    const/4 v8, 0x1

    aput-boolean v8, v5, v7

    .line 267
    invoke-virtual {v6}, Lcom/iliakplv/notes/gui/main/NotesListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080018

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    const/16 v7, 0xe

    const/4 v8, 0x1

    aput-boolean v8, v5, v7

    .line 266
    invoke-virtual {v4, v3, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 v3, 0xf

    const/4 v6, 0x1

    aput-boolean v6, v5, v3

    .line 276
    :goto_1
    invoke-virtual {v2}, Lcom/iliakplv/notes/notes/AbstractNote;->getBody()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v3, 0x16

    const/4 v4, 0x1

    aput-boolean v4, v5, v3

    .line 279
    iget-object v3, p0, Lcom/iliakplv/notes/gui/main/NotesListFragment$NotesListAdapter;->this$0:Lcom/iliakplv/notes/gui/main/NotesListFragment;

    invoke-static {v3}, Lcom/iliakplv/notes/gui/main/NotesListFragment;->access$400(Lcom/iliakplv/notes/gui/main/NotesListFragment;)Lcom/iliakplv/notes/notes/storage/NotesStorage;

    move-result-object v3

    invoke-virtual {v2}, Lcom/iliakplv/notes/notes/AbstractNote;->getId()Ljava/io/Serializable;

    move-result-object v2

    invoke-interface {v3, v2}, Lcom/iliakplv/notes/notes/storage/NotesStorage;->getLabelsForNote(Ljava/io/Serializable;)Ljava/util/List;

    move-result-object v1

    .line 280
    .local v1, "labels":Ljava/util/List;, "Ljava/util/List<Lcom/iliakplv/notes/notes/Label;>;"
    const/4 v0, 0x0

    const/16 v2, 0x17

    const/4 v3, 0x1

    aput-boolean v3, v5, v2

    :goto_2
    iget-object v2, p0, Lcom/iliakplv/notes/gui/main/NotesListFragment$NotesListAdapter;->LABELS_IDS:[I

    array-length v2, v2

    if-ge v0, v2, :cond_3

    const/16 v2, 0x18

    const/4 v3, 0x1

    aput-boolean v3, v5, v2

    .line 281
    iget-object v2, p0, Lcom/iliakplv/notes/gui/main/NotesListFragment$NotesListAdapter;->LABELS_IDS:[I

    aget v2, v2, v0

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/16 v3, 0x19

    const/4 v4, 0x1

    aput-boolean v4, v5, v3

    .line 282
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    const/16 v3, 0x1a

    const/4 v4, 0x1

    aput-boolean v4, v5, v3

    .line 283
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iliakplv/notes/notes/Label;

    const/16 v4, 0x1b

    const/4 v6, 0x1

    aput-boolean v6, v5, v4

    .line 284
    iget-object v4, p0, Lcom/iliakplv/notes/gui/main/NotesListFragment$NotesListAdapter;->this$0:Lcom/iliakplv/notes/gui/main/NotesListFragment;

    invoke-static {v4}, Lcom/iliakplv/notes/gui/main/NotesListFragment;->access$500(Lcom/iliakplv/notes/gui/main/NotesListFragment;)[I

    move-result-object v4

    invoke-virtual {v3}, Lcom/iliakplv/notes/notes/Label;->getColor()I

    move-result v6

    aget v4, v4, v6

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setBackgroundColor(I)V

    const/16 v4, 0x1c

    const/4 v6, 0x1

    aput-boolean v6, v5, v4

    .line 285
    invoke-virtual {v3}, Lcom/iliakplv/notes/notes/Label;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/iliakplv/notes/gui/main/NotesListFragment$NotesListAdapter;->getLetterForLabelName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v3, 0x1d

    const/4 v4, 0x1

    aput-boolean v4, v5, v3

    .line 286
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 287
    const/16 v2, 0x1e

    const/4 v3, 0x1

    aput-boolean v3, v5, v2

    .line 280
    :goto_3
    add-int/lit8 v0, v0, 0x1

    .local v0, "i":I
    const/16 v2, 0x20

    const/4 v3, 0x1

    aput-boolean v3, v5, v2

    goto :goto_2

    .line 253
    .end local v0    # "i":I
    .end local v1    # "labels":Ljava/util/List;, "Ljava/util/List<Lcom/iliakplv/notes/notes/Label;>;"
    :cond_0
    invoke-virtual {p0}, Lcom/iliakplv/notes/gui/main/NotesListFragment$NotesListAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030008

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const/4 v2, 0x4

    const/4 v3, 0x1

    aput-boolean v3, v5, v2

    goto/16 :goto_0

    .line 269
    :cond_1
    iget-object v6, p0, Lcom/iliakplv/notes/gui/main/NotesListFragment$NotesListAdapter;->this$0:Lcom/iliakplv/notes/gui/main/NotesListFragment;

    invoke-virtual {v6}, Lcom/iliakplv/notes/gui/main/NotesListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070010

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 270
    const/4 v6, 0x0

    iget-object v7, p0, Lcom/iliakplv/notes/gui/main/NotesListFragment$NotesListAdapter;->this$0:Lcom/iliakplv/notes/gui/main/NotesListFragment;

    const/16 v8, 0x10

    const/4 v9, 0x1

    aput-boolean v9, v5, v8

    .line 271
    invoke-virtual {v7}, Lcom/iliakplv/notes/gui/main/NotesListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f080018

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    const/16 v8, 0x11

    const/4 v9, 0x1

    aput-boolean v9, v5, v8

    .line 270
    invoke-virtual {v3, v6, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 v3, 0x12

    const/4 v6, 0x1

    aput-boolean v6, v5, v3

    .line 272
    iget-object v3, p0, Lcom/iliakplv/notes/gui/main/NotesListFragment$NotesListAdapter;->this$0:Lcom/iliakplv/notes/gui/main/NotesListFragment;

    invoke-virtual {v3}, Lcom/iliakplv/notes/gui/main/NotesListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f07000d

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 273
    const/4 v3, 0x0

    iget-object v6, p0, Lcom/iliakplv/notes/gui/main/NotesListFragment$NotesListAdapter;->this$0:Lcom/iliakplv/notes/gui/main/NotesListFragment;

    const/16 v7, 0x13

    const/4 v8, 0x1

    aput-boolean v8, v5, v7

    .line 274
    invoke-virtual {v6}, Lcom/iliakplv/notes/gui/main/NotesListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080017

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    const/16 v7, 0x14

    const/4 v8, 0x1

    aput-boolean v8, v5, v7

    .line 273
    invoke-virtual {v4, v3, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 v3, 0x15

    const/4 v6, 0x1

    aput-boolean v6, v5, v3

    goto/16 :goto_1

    .line 288
    .restart local v1    # "labels":Ljava/util/List;, "Ljava/util/List<Lcom/iliakplv/notes/notes/Label;>;"
    :cond_2
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v2, 0x1f

    const/4 v3, 0x1

    aput-boolean v3, v5, v2

    goto/16 :goto_3

    .line 292
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, p0, Lcom/iliakplv/notes/gui/main/NotesListFragment$NotesListAdapter;->LABELS_IDS:[I

    array-length v3, v3

    if-le v2, v3, :cond_4

    const/16 v2, 0x21

    const/4 v3, 0x1

    aput-boolean v3, v5, v2

    .line 293
    const v2, 0x7f0c001f

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    const/16 v2, 0x22

    const/4 v3, 0x1

    aput-boolean v3, v5, v2

    .line 298
    :goto_4
    const/16 v2, 0x24

    const/4 v3, 0x1

    aput-boolean v3, v5, v2

    return-object p2

    .line 295
    :cond_4
    const v2, 0x7f0c001f

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    const/16 v2, 0x23

    const/4 v3, 0x1

    aput-boolean v3, v5, v2

    goto :goto_4
.end method
