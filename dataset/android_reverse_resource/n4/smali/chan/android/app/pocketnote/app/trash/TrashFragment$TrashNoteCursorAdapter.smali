.class Lchan/android/app/pocketnote/app/trash/TrashFragment$TrashNoteCursorAdapter;
.super Landroid/widget/CursorAdapter;
.source "TrashFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lchan/android/app/pocketnote/app/trash/TrashFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TrashNoteCursorAdapter"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private inflater:Landroid/view/LayoutInflater;

.field private layoutId:I

.field final synthetic this$0:Lchan/android/app/pocketnote/app/trash/TrashFragment;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lchan/android/app/pocketnote/app/trash/TrashFragment$TrashNoteCursorAdapter;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x21da8388e8d74021L

    const-string v2, "chan/android/app/pocketnote/app/trash/TrashFragment$TrashNoteCursorAdapter"

    const/16 v3, 0xf

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lchan/android/app/pocketnote/app/trash/TrashFragment$TrashNoteCursorAdapter;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Lchan/android/app/pocketnote/app/trash/TrashFragment;Landroid/content/Context;I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/trash/TrashFragment$TrashNoteCursorAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 243
    iput-object p1, p0, Lchan/android/app/pocketnote/app/trash/TrashFragment$TrashNoteCursorAdapter;->this$0:Lchan/android/app/pocketnote/app/trash/TrashFragment;

    aput-boolean v2, v0, v3

    .line 244
    const/4 v1, 0x0

    invoke-direct {p0, p2, v1, v3}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    aput-boolean v2, v0, v2

    .line 245
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lchan/android/app/pocketnote/app/trash/TrashFragment$TrashNoteCursorAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 246
    iput p3, p0, Lchan/android/app/pocketnote/app/trash/TrashFragment$TrashNoteCursorAdapter;->layoutId:I

    .line 247
    const/4 v1, 0x2

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 7

    .prologue
    const/16 v4, 0x8

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/trash/TrashFragment$TrashNoteCursorAdapter;->$jacocoInit()[Z

    move-result-object v1

    .line 259
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lchan/android/app/pocketnote/app/trash/TrashFragment$ViewHolder;

    const/4 v2, 0x6

    aput-boolean v6, v1, v2

    .line 260
    invoke-static {p3}, Lchan/android/app/pocketnote/app/Note;->fromCursor(Landroid/database/Cursor;)Lchan/android/app/pocketnote/app/Note;

    move-result-object v2

    const/4 v3, 0x7

    aput-boolean v6, v1, v3

    .line 261
    invoke-virtual {v2}, Lchan/android/app/pocketnote/app/Note;->isTrashed()Z

    move-result v3

    if-eqz v3, :cond_0

    aput-boolean v6, v1, v4

    .line 265
    :goto_0
    iget-object v3, v0, Lchan/android/app/pocketnote/app/trash/TrashFragment$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v2}, Lchan/android/app/pocketnote/app/Note;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v3, 0xc

    aput-boolean v6, v1, v3

    .line 267
    new-instance v3, Lorg/joda/time/DateTime;

    invoke-virtual {v2}, Lchan/android/app/pocketnote/app/Note;->getDeletedTime()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Lorg/joda/time/DateTime;-><init>(J)V

    const/16 v2, 0xd

    aput-boolean v6, v1, v2

    .line 268
    iget-object v0, v0, Lchan/android/app/pocketnote/app/trash/TrashFragment$ViewHolder;->date:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Lchan/android/app/pocketnote/util/DateTimeUtility;->getReminderReadableDate(Lorg/joda/time/DateTime;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " @ "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3}, Lorg/joda/time/DateTime;->getHourOfDay()I

    move-result v4

    invoke-virtual {v3}, Lorg/joda/time/DateTime;->getMinuteOfHour()I

    move-result v3

    invoke-static {v4, v3}, Lchan/android/app/pocketnote/util/DateTimeUtility;->getReminderReadableTime(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 269
    const/16 v0, 0xe

    aput-boolean v6, v1, v0

    return-void

    .line 261
    :cond_0
    const/16 v3, 0x9

    aput-boolean v6, v1, v3

    .line 262
    iget-object v3, v0, Lchan/android/app/pocketnote/app/trash/TrashFragment$ViewHolder;->parent:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/16 v3, 0xa

    aput-boolean v6, v1, v3

    .line 263
    iget-object v3, v0, Lchan/android/app/pocketnote/app/trash/TrashFragment$ViewHolder;->parent:Landroid/widget/LinearLayout;

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v3, 0xb

    aput-boolean v6, v1, v3

    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/trash/TrashFragment$TrashNoteCursorAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 251
    iget-object v1, p0, Lchan/android/app/pocketnote/app/trash/TrashFragment$TrashNoteCursorAdapter;->inflater:Landroid/view/LayoutInflater;

    iget v2, p0, Lchan/android/app/pocketnote/app/trash/TrashFragment$TrashNoteCursorAdapter;->layoutId:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x3

    aput-boolean v4, v0, v2

    .line 252
    new-instance v2, Lchan/android/app/pocketnote/app/trash/TrashFragment$ViewHolder;

    invoke-direct {v2, v1}, Lchan/android/app/pocketnote/app/trash/TrashFragment$ViewHolder;-><init>(Landroid/view/View;)V

    const/4 v3, 0x4

    aput-boolean v4, v0, v3

    .line 253
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 254
    const/4 v2, 0x5

    aput-boolean v4, v0, v2

    return-object v1
.end method
