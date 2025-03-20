.class Lme/writeily/adapter/NotesAdapter$1;
.super Landroid/widget/Filter;
.source "NotesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/writeily/adapter/NotesAdapter;->getFilter()Landroid/widget/Filter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lme/writeily/adapter/NotesAdapter;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lme/writeily/adapter/NotesAdapter$1;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x1afa81f23cb4e422L

    const-string v2, "me/writeily/adapter/NotesAdapter$1"

    const/16 v3, 0x12

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lme/writeily/adapter/NotesAdapter$1;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lme/writeily/adapter/NotesAdapter;)V
    .locals 3

    .prologue
    invoke-static {}, Lme/writeily/adapter/NotesAdapter$1;->$jacocoInit()[Z

    move-result-object v0

    .line 107
    iput-object p1, p0, Lme/writeily/adapter/NotesAdapter$1;->this$0:Lme/writeily/adapter/NotesAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 8

    .prologue
    const/4 v7, 0x1

    invoke-static {}, Lme/writeily/adapter/NotesAdapter$1;->$jacocoInit()[Z

    move-result-object v1

    .line 111
    new-instance v2, Landroid/widget/Filter$FilterResults;

    invoke-direct {v2}, Landroid/widget/Filter$FilterResults;-><init>()V

    aput-boolean v7, v1, v7

    .line 113
    if-nez p1, :cond_0

    const/4 v0, 0x2

    aput-boolean v7, v1, v0

    .line 114
    :goto_0
    iget-object v0, p0, Lme/writeily/adapter/NotesAdapter$1;->this$0:Lme/writeily/adapter/NotesAdapter;

    invoke-static {v0}, Lme/writeily/adapter/NotesAdapter;->access$000(Lme/writeily/adapter/NotesAdapter;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    const/4 v0, 0x4

    aput-boolean v7, v1, v0

    .line 115
    iget-object v0, p0, Lme/writeily/adapter/NotesAdapter$1;->this$0:Lme/writeily/adapter/NotesAdapter;

    invoke-static {v0}, Lme/writeily/adapter/NotesAdapter;->access$000(Lme/writeily/adapter/NotesAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, v2, Landroid/widget/Filter$FilterResults;->count:I

    const/4 v0, 0x5

    aput-boolean v7, v1, v0

    .line 128
    :goto_1
    const/16 v0, 0xf

    aput-boolean v7, v1, v0

    return-object v2

    .line 113
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x3

    aput-boolean v7, v1, v0

    goto :goto_0

    .line 117
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x6

    aput-boolean v7, v1, v0

    .line 119
    iget-object v0, p0, Lme/writeily/adapter/NotesAdapter$1;->this$0:Lme/writeily/adapter/NotesAdapter;

    invoke-static {v0}, Lme/writeily/adapter/NotesAdapter;->access$000(Lme/writeily/adapter/NotesAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v0, 0x7

    aput-boolean v7, v1, v0

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    const/16 v5, 0x8

    aput-boolean v7, v1, v5

    .line 120
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    const/16 v0, 0x9

    aput-boolean v7, v1, v0

    .line 123
    :goto_3
    const/16 v0, 0xc

    aput-boolean v7, v1, v0

    goto :goto_2

    .line 120
    :cond_2
    const/16 v5, 0xa

    aput-boolean v7, v1, v5

    .line 121
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v0, 0xb

    aput-boolean v7, v1, v0

    goto :goto_3

    .line 125
    :cond_3
    iput-object v3, v2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    const/16 v0, 0xd

    aput-boolean v7, v1, v0

    .line 126
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, v2, Landroid/widget/Filter$FilterResults;->count:I

    const/16 v0, 0xe

    aput-boolean v7, v1, v0

    goto :goto_1
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lme/writeily/adapter/NotesAdapter$1;->$jacocoInit()[Z

    move-result-object v1

    .line 133
    iget-object v2, p0, Lme/writeily/adapter/NotesAdapter$1;->this$0:Lme/writeily/adapter/NotesAdapter;

    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-static {v2, v0}, Lme/writeily/adapter/NotesAdapter;->access$102(Lme/writeily/adapter/NotesAdapter;Ljava/util/List;)Ljava/util/List;

    const/16 v0, 0x10

    aput-boolean v3, v1, v0

    .line 134
    iget-object v0, p0, Lme/writeily/adapter/NotesAdapter$1;->this$0:Lme/writeily/adapter/NotesAdapter;

    invoke-virtual {v0}, Lme/writeily/adapter/NotesAdapter;->notifyDataSetChanged()V

    .line 135
    const/16 v0, 0x11

    aput-boolean v3, v1, v0

    return-void
.end method
