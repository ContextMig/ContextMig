.class public Lcom/roomorama/caldroid/CaldroidGridAdapter;
.super Landroid/widget/BaseAdapter;
.source "CaldroidGridAdapter.java"


# instance fields
.field protected caldroidData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected context:Landroid/content/Context;

.field protected datetimeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lhirondelle/date4j/DateTime;",
            ">;"
        }
    .end annotation
.end field

.field protected defaultCellBackgroundRes:I

.field protected defaultTextColorRes:Landroid/content/res/ColorStateList;

.field protected disableDates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lhirondelle/date4j/DateTime;",
            ">;"
        }
    .end annotation
.end field

.field protected disableDatesMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lhirondelle/date4j/DateTime;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected extraData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected localInflater:Landroid/view/LayoutInflater;

.field protected maxDateTime:Lhirondelle/date4j/DateTime;

.field protected minDateTime:Lhirondelle/date4j/DateTime;

.field protected month:I

.field protected resources:Landroid/content/res/Resources;

.field protected selectedDates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lhirondelle/date4j/DateTime;",
            ">;"
        }
    .end annotation
.end field

.field protected selectedDatesMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lhirondelle/date4j/DateTime;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected sixWeeksInCalendar:Z

.field protected squareTextViewCell:Z

.field protected startDayOfWeek:I

.field protected themeResource:I

.field protected today:Lhirondelle/date4j/DateTime;

.field protected year:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IILjava/util/Map;Ljava/util/Map;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "month"    # I
    .param p3, "year"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 146
    .local p4, "caldroidData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p5, "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 41
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/roomorama/caldroid/CaldroidGridAdapter;->disableDatesMap:Ljava/util/Map;

    .line 42
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/roomorama/caldroid/CaldroidGridAdapter;->selectedDatesMap:Ljava/util/Map;

    .line 53
    const/4 v1, -0x1

    iput v1, p0, Lcom/roomorama/caldroid/CaldroidGridAdapter;->defaultCellBackgroundRes:I

    .line 147
    iput p2, p0, Lcom/roomorama/caldroid/CaldroidGridAdapter;->month:I

    .line 148
    iput p3, p0, Lcom/roomorama/caldroid/CaldroidGridAdapter;->year:I

    .line 149
    iput-object p1, p0, Lcom/roomorama/caldroid/CaldroidGridAdapter;->context:Landroid/content/Context;

    .line 150
    iput-object p4, p0, Lcom/roomorama/caldroid/CaldroidGridAdapter;->caldroidData:Ljava/util/Map;

    .line 151
    iput-object p5, p0, Lcom/roomorama/caldroid/CaldroidGridAdapter;->extraData:Ljava/util/Map;

    .line 152
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/roomorama/caldroid/CaldroidGridAdapter;->resources:Landroid/content/res/Resources;

    .line 155
    invoke-direct {p0}, Lcom/roomorama/caldroid/CaldroidGridAdapter;->populateFromCaldroidData()V

    .line 157
    const-string v1, "layout_inflater"

    .line 158
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 159
    .local v0, "inflater":Landroid/view/LayoutInflater;
    iget v1, p0, Lcom/roomorama/caldroid/CaldroidGridAdapter;->themeResource:I

    invoke-static {p1, v0, v1}, Lcom/roomorama/caldroid/CaldroidFragment;->getThemeInflater(Landroid/content/Context;Landroid/view/LayoutInflater;I)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/roomorama/caldroid/CaldroidGridAdapter;->localInflater:Landroid/view/LayoutInflater;

    .line 160
    return-void
.end method

.method private getDefaultResources()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 209
    new-instance v3, Landroid/view/ContextThemeWrapper;

    iget-object v4, p0, Lcom/roomorama/caldroid/CaldroidGridAdapter;->context:Landroid/content/Context;

    iget v5, p0, Lcom/roomorama/caldroid/CaldroidGridAdapter;->themeResource:I

    invoke-direct {v3, v4, v5}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 212
    .local v3, "wrapped":Landroid/content/Context;
    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 213
    .local v1, "theme":Landroid/content/res/Resources$Theme;
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 214
    .local v0, "styleCellVal":Landroid/util/TypedValue;
    iget-boolean v4, p0, Lcom/roomorama/caldroid/CaldroidGridAdapter;->squareTextViewCell:Z

    if-eqz v4, :cond_0

    .line 215
    sget v4, Lcom/caldroid/R$attr;->styleCaldroidSquareCell:I

    invoke-virtual {v1, v4, v0, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 221
    :goto_0
    iget v4, v0, Landroid/util/TypedValue;->data:I

    sget-object v5, Lcom/caldroid/R$styleable;->Cell:[I

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 222
    .local v2, "typedArray":Landroid/content/res/TypedArray;
    sget v4, Lcom/caldroid/R$styleable;->Cell_android_background:I

    const/4 v5, -0x1

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Lcom/roomorama/caldroid/CaldroidGridAdapter;->defaultCellBackgroundRes:I

    .line 223
    sget v4, Lcom/caldroid/R$styleable;->Cell_android_textColor:I

    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    iput-object v4, p0, Lcom/roomorama/caldroid/CaldroidGridAdapter;->defaultTextColorRes:Landroid/content/res/ColorStateList;

    .line 224
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 225
    return-void

    .line 217
    .end local v2    # "typedArray":Landroid/content/res/TypedArray;
    :cond_0
    sget v4, Lcom/caldroid/R$attr;->styleCaldroidNormalCell:I

    invoke-virtual {v1, v4, v0, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    goto :goto_0
.end method

.method private populateFromCaldroidData()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 167
    iget-object v1, p0, Lcom/roomorama/caldroid/CaldroidGridAdapter;->caldroidData:Ljava/util/Map;

    const-string v2, "disableDates"

    .line 168
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/roomorama/caldroid/CaldroidGridAdapter;->disableDates:Ljava/util/ArrayList;

    .line 169
    iget-object v1, p0, Lcom/roomorama/caldroid/CaldroidGridAdapter;->disableDates:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 170
    iget-object v1, p0, Lcom/roomorama/caldroid/CaldroidGridAdapter;->disableDatesMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 171
    iget-object v1, p0, Lcom/roomorama/caldroid/CaldroidGridAdapter;->disableDates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhirondelle/date4j/DateTime;

    .line 172
    .local v0, "dateTime":Lhirondelle/date4j/DateTime;
    iget-object v2, p0, Lcom/roomorama/caldroid/CaldroidGridAdapter;->disableDatesMap:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 176
    .end local v0    # "dateTime":Lhirondelle/date4j/DateTime;
    :cond_0
    iget-object v1, p0, Lcom/roomorama/caldroid/CaldroidGridAdapter;->caldroidData:Ljava/util/Map;

    const-string v2, "selectedDates"

    .line 177
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/roomorama/caldroid/CaldroidGridAdapter;->selectedDates:Ljava/util/ArrayList;

    .line 178
    iget-object v1, p0, Lcom/roomorama/caldroid/CaldroidGridAdapter;->selectedDates:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 179
    iget-object v1, p0, Lcom/roomorama/caldroid/CaldroidGridAdapter;->selectedDatesMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 180
    iget-object v1, p0, Lcom/roomorama/caldroid/CaldroidGridAdapter;->selectedDates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhirondelle/date4j/DateTime;

    .line 181
    .restart local v0    # "dateTime":Lhirondelle/date4j/DateTime;
    iget-object v2, p0, Lcom/roomorama/caldroid/CaldroidGridAdapter;->selectedDatesMap:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 185
    .end local v0    # "dateTime":Lhirondelle/date4j/DateTime;
    :cond_1
    iget-object v1, p0, Lcom/roomorama/caldroid/CaldroidGridAdapter;->caldroidData:Ljava/util/Map;

    const-string v2, "_minDateTime"

    .line 186
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhirondelle/date4j/DateTime;

    iput-object v1, p0, Lcom/roomorama/caldroid/CaldroidGridAdapter;->minDateTime:Lhirondelle/date4j/DateTime;

    .line 187
    iget-object v1, p0, Lcom/roomorama/caldroid/CaldroidGridAdapter;->caldroidData:Ljava/util/Map;

    const-string v2, "_maxDateTime"

    .line 188
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhirondelle/date4j/DateTime;

    iput-object v1, p0, Lcom/roomorama/caldroid/CaldroidGridAdapter;->maxDateTime:Lhirondelle/date4j/DateTime;

    .line 189
    iget-object v1, p0, Lcom/roomorama/caldroid/CaldroidGridAdapter;->caldroidData:Ljava/util/Map;

    const-string v2, "startDayOfWeek"

    .line 190
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 189
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/roomorama/caldroid/CaldroidGridAdapter;->startDayOfWeek:I

    .line 191
    iget-object v1, p0, Lcom/roomorama/caldroid/CaldroidGridAdapter;->caldroidData:Ljava/util/Map;

    const-string v2, "sixWeeksInCalendar"

    .line 192
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 191
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/roomorama/caldroid/CaldroidGridAdapter;->sixWeeksInCalendar:Z

    .line 193
    iget-object v1, p0, Lcom/roomorama/caldroid/CaldroidGridAdapter;->caldroidData:Ljava/util/Map;

    const-string v2, "squareTextViewCell"

    .line 194
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 193
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/roomorama/caldroid/CaldroidGridAdapter;->squareTextViewCell:Z

    .line 197
    iget-object v1, p0, Lcom/roomorama/caldroid/CaldroidGridAdapter;->caldroidData:Ljava/util/Map;

    const-string v2, "themeResource"

    .line 198
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 197
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/roomorama/caldroid/CaldroidGridAdapter;->themeResource:I

    .line 200
    iget v1, p0, Lcom/roomorama/caldroid/CaldroidGridAdapter;->month:I

    iget v2, p0, Lcom/roomorama/caldroid/CaldroidGridAdapter;->year:I

    iget v3, p0, Lcom/roomorama/caldroid/CaldroidGridAdapter;->startDayOfWeek:I

    iget-boolean v4, p0, Lcom/roomorama/caldroid/CaldroidGridAdapter;->sixWeeksInCalendar:Z

    invoke-static {v1, v2, v3, v4}, Lcom/roomorama/caldroid/CalendarHelper;->getFullWeeks(IIIZ)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/roomorama/caldroid/CaldroidGridAdapter;->datetimeList:Ljava/util/ArrayList;

    .line 203
    invoke-direct {p0}, Lcom/roomorama/caldroid/CaldroidGridAdapter;->getDefaultResources()V

    .line 204
    return-void
.end method

.method private resetCustomResources(Lcom/roomorama/caldroid/CellView;)V
    .locals 1
    .param p1, "cellView"    # Lcom/roomorama/caldroid/CellView;

    .prologue
    .line 273
    iget v0, p0, Lcom/roomorama/caldroid/CaldroidGridAdapter;->defaultCellBackgroundRes:I

    invoke-virtual {p1, v0}, Lcom/roomorama/caldroid/CellView;->setBackgroundResource(I)V

    .line 274
    iget-object v0, p0, Lcom/roomorama/caldroid/CaldroidGridAdapter;->defaultTextColorRes:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, v0}, Lcom/roomorama/caldroid/CellView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 275
    return-void
.end method


# virtual methods
.method protected customizeTextView(ILcom/roomorama/caldroid/CellView;)V
    .locals 7
    .param p1, "position"    # I
    .param p2, "cellView"    # Lcom/roomorama/caldroid/CellView;

    .prologue
    .line 288
    invoke-virtual {p2}, Lcom/roomorama/caldroid/CellView;->getPaddingTop()I

    move-result v4

    .line 289
    .local v4, "topPadding":I
    invoke-virtual {p2}, Lcom/roomorama/caldroid/CellView;->getPaddingLeft()I

    move-result v2

    .line 290
    .local v2, "leftPadding":I
    invoke-virtual {p2}, Lcom/roomorama/caldroid/CellView;->getPaddingBottom()I

    move-result v0

    .line 291
    .local v0, "bottomPadding":I
    invoke-virtual {p2}, Lcom/roomorama/caldroid/CellView;->getPaddingRight()I

    move-result v3

    .line 294
    .local v3, "rightPadding":I
    iget-object v5, p0, Lcom/roomorama/caldroid/CaldroidGridAdapter;->datetimeList:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhirondelle/date4j/DateTime;

    .line 296
    .local v1, "dateTime":Lhirondelle/date4j/DateTime;
    invoke-virtual {p2}, Lcom/roomorama/caldroid/CellView;->resetCustomStates()V

    .line 297
    invoke-direct {p0, p2}, Lcom/roomorama/caldroid/CaldroidGridAdapter;->resetCustomResources(Lcom/roomorama/caldroid/CellView;)V

    .line 299
    invoke-virtual {p0}, Lcom/roomorama/caldroid/CaldroidGridAdapter;->getToday()Lhirondelle/date4j/DateTime;

    move-result-object v5

    invoke-virtual {v1, v5}, Lhirondelle/date4j/DateTime;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 300
    sget v5, Lcom/roomorama/caldroid/CellView;->STATE_TODAY:I

    invoke-virtual {p2, v5}, Lcom/roomorama/caldroid/CellView;->addCustomState(I)V

    .line 304
    :cond_0
    invoke-virtual {v1}, Lhirondelle/date4j/DateTime;->getMonth()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget v6, p0, Lcom/roomorama/caldroid/CaldroidGridAdapter;->month:I

    if-eq v5, v6, :cond_1

    .line 305
    sget v5, Lcom/roomorama/caldroid/CellView;->STATE_PREV_NEXT_MONTH:I

    invoke-virtual {p2, v5}, Lcom/roomorama/caldroid/CellView;->addCustomState(I)V

    .line 309
    :cond_1
    iget-object v5, p0, Lcom/roomorama/caldroid/CaldroidGridAdapter;->minDateTime:Lhirondelle/date4j/DateTime;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/roomorama/caldroid/CaldroidGridAdapter;->minDateTime:Lhirondelle/date4j/DateTime;

    invoke-virtual {v1, v5}, Lhirondelle/date4j/DateTime;->lt(Lhirondelle/date4j/DateTime;)Z

    move-result v5

    if-nez v5, :cond_4

    :cond_2
    iget-object v5, p0, Lcom/roomorama/caldroid/CaldroidGridAdapter;->maxDateTime:Lhirondelle/date4j/DateTime;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/roomorama/caldroid/CaldroidGridAdapter;->maxDateTime:Lhirondelle/date4j/DateTime;

    .line 310
    invoke-virtual {v1, v5}, Lhirondelle/date4j/DateTime;->gt(Lhirondelle/date4j/DateTime;)Z

    move-result v5

    if-nez v5, :cond_4

    :cond_3
    iget-object v5, p0, Lcom/roomorama/caldroid/CaldroidGridAdapter;->disableDates:Ljava/util/ArrayList;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/roomorama/caldroid/CaldroidGridAdapter;->disableDatesMap:Ljava/util/Map;

    .line 312
    invoke-interface {v5, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 314
    :cond_4
    sget v5, Lcom/roomorama/caldroid/CellView;->STATE_DISABLED:I

    invoke-virtual {p2, v5}, Lcom/roomorama/caldroid/CellView;->addCustomState(I)V

    .line 318
    :cond_5
    iget-object v5, p0, Lcom/roomorama/caldroid/CaldroidGridAdapter;->selectedDates:Ljava/util/ArrayList;

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/roomorama/caldroid/CaldroidGridAdapter;->selectedDatesMap:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 319
    sget v5, Lcom/roomorama/caldroid/CellView;->STATE_SELECTED:I

    invoke-virtual {p2, v5}, Lcom/roomorama/caldroid/CellView;->addCustomState(I)V

    .line 322
    :cond_6
    invoke-virtual {p2}, Lcom/roomorama/caldroid/CellView;->refreshDrawableState()V

    .line 325
    invoke-virtual {v1}, Lhirondelle/date4j/DateTime;->getDay()Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Lcom/roomorama/caldroid/CellView;->setText(Ljava/lang/CharSequence;)V

    .line 328
    invoke-virtual {p0, v1, p2, p2}, Lcom/roomorama/caldroid/CaldroidGridAdapter;->setCustomResources(Lhirondelle/date4j/DateTime;Landroid/view/View;Landroid/widget/TextView;)V

    .line 332
    invoke-virtual {p2, v2, v4, v3, v0}, Lcom/roomorama/caldroid/CellView;->setPadding(IIII)V

    .line 334
    return-void
.end method

.method public getCaldroidData()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 116
    iget-object v0, p0, Lcom/roomorama/caldroid/CaldroidGridAdapter;->caldroidData:Ljava/util/Map;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/roomorama/caldroid/CaldroidGridAdapter;->datetimeList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getDatetimeList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lhirondelle/date4j/DateTime;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, Lcom/roomorama/caldroid/CaldroidGridAdapter;->datetimeList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getDisableDates()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lhirondelle/date4j/DateTime;",
            ">;"
        }
    .end annotation

    .prologue
    .line 96
    iget-object v0, p0, Lcom/roomorama/caldroid/CaldroidGridAdapter;->disableDates:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getExtraData()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 127
    iget-object v0, p0, Lcom/roomorama/caldroid/CaldroidGridAdapter;->extraData:Ljava/util/Map;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 343
    iget-object v0, p0, Lcom/roomorama/caldroid/CaldroidGridAdapter;->datetimeList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    .line 349
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getMaxDateTime()Lhirondelle/date4j/DateTime;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/roomorama/caldroid/CaldroidGridAdapter;->maxDateTime:Lhirondelle/date4j/DateTime;

    return-object v0
.end method

.method public getMinDateTime()Lhirondelle/date4j/DateTime;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/roomorama/caldroid/CaldroidGridAdapter;->minDateTime:Lhirondelle/date4j/DateTime;

    return-object v0
.end method

.method public getSelectedDates()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lhirondelle/date4j/DateTime;",
            ">;"
        }
    .end annotation

    .prologue
    .line 104
    iget-object v0, p0, Lcom/roomorama/caldroid/CaldroidGridAdapter;->selectedDates:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getThemeResource()I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lcom/roomorama/caldroid/CaldroidGridAdapter;->themeResource:I

    return v0
.end method

.method protected getToday()Lhirondelle/date4j/DateTime;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/roomorama/caldroid/CaldroidGridAdapter;->today:Lhirondelle/date4j/DateTime;

    if-nez v0, :cond_0

    .line 233
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-static {v0}, Lcom/roomorama/caldroid/CalendarHelper;->convertDateToDateTime(Ljava/util/Date;)Lhirondelle/date4j/DateTime;

    move-result-object v0

    iput-object v0, p0, Lcom/roomorama/caldroid/CaldroidGridAdapter;->today:Lhirondelle/date4j/DateTime;

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/roomorama/caldroid/CaldroidGridAdapter;->today:Lhirondelle/date4j/DateTime;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 357
    if-nez p2, :cond_1

    .line 358
    iget-boolean v2, p0, Lcom/roomorama/caldroid/CaldroidGridAdapter;->squareTextViewCell:Z

    if-eqz v2, :cond_0

    sget v1, Lcom/caldroid/R$layout;->square_date_cell:I

    .line 359
    .local v1, "squareDateCellResource":I
    :goto_0
    iget-object v2, p0, Lcom/roomorama/caldroid/CaldroidGridAdapter;->localInflater:Landroid/view/LayoutInflater;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/roomorama/caldroid/CellView;

    .line 364
    .end local v1    # "squareDateCellResource":I
    .local v0, "cellView":Lcom/roomorama/caldroid/CellView;
    :goto_1
    invoke-virtual {p0, p1, v0}, Lcom/roomorama/caldroid/CaldroidGridAdapter;->customizeTextView(ILcom/roomorama/caldroid/CellView;)V

    .line 366
    return-object v0

    .line 358
    .end local v0    # "cellView":Lcom/roomorama/caldroid/CellView;
    :cond_0
    sget v1, Lcom/caldroid/R$layout;->normal_date_cell:I

    goto :goto_0

    :cond_1
    move-object v0, p2

    .line 361
    check-cast v0, Lcom/roomorama/caldroid/CellView;

    .restart local v0    # "cellView":Lcom/roomorama/caldroid/CellView;
    goto :goto_1
.end method

.method public setAdapterDateTime(Lhirondelle/date4j/DateTime;)V
    .locals 4
    .param p1, "dateTime"    # Lhirondelle/date4j/DateTime;

    .prologue
    .line 68
    invoke-virtual {p1}, Lhirondelle/date4j/DateTime;->getMonth()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/roomorama/caldroid/CaldroidGridAdapter;->month:I

    .line 69
    invoke-virtual {p1}, Lhirondelle/date4j/DateTime;->getYear()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/roomorama/caldroid/CaldroidGridAdapter;->year:I

    .line 70
    iget v0, p0, Lcom/roomorama/caldroid/CaldroidGridAdapter;->month:I

    iget v1, p0, Lcom/roomorama/caldroid/CaldroidGridAdapter;->year:I

    iget v2, p0, Lcom/roomorama/caldroid/CaldroidGridAdapter;->startDayOfWeek:I

    iget-boolean v3, p0, Lcom/roomorama/caldroid/CaldroidGridAdapter;->sixWeeksInCalendar:Z

    invoke-static {v0, v1, v2, v3}, Lcom/roomorama/caldroid/CalendarHelper;->getFullWeeks(IIIZ)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/roomorama/caldroid/CaldroidGridAdapter;->datetimeList:Ljava/util/ArrayList;

    .line 72
    return-void
.end method

.method public setCaldroidData(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 120
    .local p1, "caldroidData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iput-object p1, p0, Lcom/roomorama/caldroid/CaldroidGridAdapter;->caldroidData:Ljava/util/Map;

    .line 123
    invoke-direct {p0}, Lcom/roomorama/caldroid/CaldroidGridAdapter;->populateFromCaldroidData()V

    .line 124
    return-void
.end method

.method protected setCustomResources(Lhirondelle/date4j/DateTime;Landroid/view/View;Landroid/widget/TextView;)V
    .locals 6
    .param p1, "dateTime"    # Lhirondelle/date4j/DateTime;
    .param p2, "backgroundView"    # Landroid/view/View;
    .param p3, "textView"    # Landroid/widget/TextView;

    .prologue
    .line 242
    iget-object v4, p0, Lcom/roomorama/caldroid/CaldroidGridAdapter;->caldroidData:Ljava/util/Map;

    const-string v5, "_backgroundForDateTimeMap"

    .line 243
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 244
    .local v0, "backgroundForDateTimeMap":Ljava/util/Map;, "Ljava/util/Map<Lhirondelle/date4j/DateTime;Landroid/graphics/drawable/Drawable;>;"
    if-eqz v0, :cond_0

    .line 246
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    .line 249
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 250
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x10

    if-lt v4, v5, :cond_2

    .line 251
    invoke-virtual {p2, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 259
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/roomorama/caldroid/CaldroidGridAdapter;->caldroidData:Ljava/util/Map;

    const-string v5, "_textColorForDateTimeMap"

    .line 260
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 261
    .local v2, "textColorForDateTimeMap":Ljava/util/Map;, "Ljava/util/Map<Lhirondelle/date4j/DateTime;Ljava/lang/Integer;>;"
    if-eqz v2, :cond_1

    .line 263
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 266
    .local v3, "textColorResource":Ljava/lang/Integer;
    if-eqz v3, :cond_1

    .line 267
    iget-object v4, p0, Lcom/roomorama/caldroid/CaldroidGridAdapter;->resources:Landroid/content/res/Resources;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {p3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 270
    .end local v3    # "textColorResource":Ljava/lang/Integer;
    :cond_1
    return-void

    .line 253
    .end local v2    # "textColorForDateTimeMap":Ljava/util/Map;, "Ljava/util/Map<Lhirondelle/date4j/DateTime;Ljava/lang/Integer;>;"
    .restart local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_2
    invoke-virtual {p2, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setDisableDates(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lhirondelle/date4j/DateTime;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 100
    .local p1, "disableDates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lhirondelle/date4j/DateTime;>;"
    iput-object p1, p0, Lcom/roomorama/caldroid/CaldroidGridAdapter;->disableDates:Ljava/util/ArrayList;

    .line 101
    return-void
.end method

.method public setExtraData(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 131
    .local p1, "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iput-object p1, p0, Lcom/roomorama/caldroid/CaldroidGridAdapter;->extraData:Ljava/util/Map;

    .line 132
    return-void
.end method

.method public setMaxDateTime(Lhirondelle/date4j/DateTime;)V
    .locals 0
    .param p1, "maxDateTime"    # Lhirondelle/date4j/DateTime;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/roomorama/caldroid/CaldroidGridAdapter;->maxDateTime:Lhirondelle/date4j/DateTime;

    .line 93
    return-void
.end method

.method public setMinDateTime(Lhirondelle/date4j/DateTime;)V
    .locals 0
    .param p1, "minDateTime"    # Lhirondelle/date4j/DateTime;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/roomorama/caldroid/CaldroidGridAdapter;->minDateTime:Lhirondelle/date4j/DateTime;

    .line 85
    return-void
.end method

.method public setSelectedDates(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lhirondelle/date4j/DateTime;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 108
    .local p1, "selectedDates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lhirondelle/date4j/DateTime;>;"
    iput-object p1, p0, Lcom/roomorama/caldroid/CaldroidGridAdapter;->selectedDates:Ljava/util/ArrayList;

    .line 109
    return-void
.end method

.method public updateToday()V
    .locals 1

    .prologue
    .line 228
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-static {v0}, Lcom/roomorama/caldroid/CalendarHelper;->convertDateToDateTime(Ljava/util/Date;)Lhirondelle/date4j/DateTime;

    move-result-object v0

    iput-object v0, p0, Lcom/roomorama/caldroid/CaldroidGridAdapter;->today:Lhirondelle/date4j/DateTime;

    .line 229
    return-void
.end method
