.class final Lhirondelle/date4j/DateTimeParser;
.super Ljava/lang/Object;
.source "DateTimeParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhirondelle/date4j/DateTimeParser$1;,
        Lhirondelle/date4j/DateTimeParser$Parts;,
        Lhirondelle/date4j/DateTimeParser$UnknownDateTimeFormat;
    }
.end annotation


# static fields
.field private static final CL:Ljava/lang/String; = "\\:"

.field private static final COLON:Ljava/lang/String; = ":"

.field private static final DATE:Ljava/util/regex/Pattern;

.field private static final NUM_DIGITS:Ljava/lang/Integer;

.field private static final NUM_DIGITS_FOR_FRACTIONAL_SECONDS:Ljava/lang/String; = "9"

.field private static final THIRD_POSITION:I = 0x2

.field private static final TIME:Ljava/util/regex/Pattern;

.field private static final TT:Ljava/lang/String; = "(\\d\\d)"


# instance fields
.field private fDay:Ljava/lang/Integer;

.field private fHour:Ljava/lang/Integer;

.field private fMinute:Ljava/lang/Integer;

.field private fMonth:Ljava/lang/Integer;

.field private fNanosecond:Ljava/lang/Integer;

.field private fSecond:Ljava/lang/Integer;

.field private fYear:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const-string v0, "(\\d{1,4})-(\\d\\d)-(\\d\\d)|(\\d{1,4})-(\\d\\d)|(\\d{1,4})"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lhirondelle/date4j/DateTimeParser;->DATE:Ljava/util/regex/Pattern;

    .line 69
    const-string v0, "9"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lhirondelle/date4j/DateTimeParser;->NUM_DIGITS:Ljava/lang/Integer;

    .line 70
    const-string v0, "(\\d\\d)\\:(\\d\\d)\\:(\\d\\d)\\.(\\d{1,9})|(\\d\\d)\\:(\\d\\d)\\:(\\d\\d)|(\\d\\d)\\:(\\d\\d)|(\\d\\d)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lhirondelle/date4j/DateTimeParser;->TIME:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    return-void
.end method

.method private convertToNanoseconds(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "aDecimalSeconds"    # Ljava/lang/String;

    .prologue
    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 201
    .local v0, "result":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sget-object v2, Lhirondelle/date4j/DateTimeParser;->NUM_DIGITS:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 202
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 204
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private varargs getGroup(Ljava/util/regex/Matcher;[I)Ljava/lang/String;
    .locals 5
    .param p1, "aMatcher"    # Ljava/util/regex/Matcher;
    .param p2, "aGroupIds"    # [I

    .prologue
    .line 162
    const/4 v4, 0x0

    .line 163
    .local v4, "result":Ljava/lang/String;
    move-object v0, p2

    .local v0, "arr$":[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_0

    aget v2, v0, v1

    .line 164
    .local v2, "id":I
    invoke-virtual {p1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 165
    if-eqz v4, :cond_1

    .line 167
    .end local v2    # "id":I
    :cond_0
    return-object v4

    .line 163
    .restart local v2    # "id":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private hasColonInThirdPlace(Ljava/lang/String;)Z
    .locals 4
    .param p1, "aDateTime"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x2

    .line 133
    const/4 v0, 0x0

    .line 134
    .local v0, "result":Z
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v3, :cond_0

    .line 135
    const-string v1, ":"

    const/4 v2, 0x3

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 137
    :cond_0
    return v0
.end method

.method private parseDate(Ljava/lang/String;)V
    .locals 7
    .param p1, "aDate"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x3

    .line 141
    sget-object v4, Lhirondelle/date4j/DateTimeParser;->DATE:Ljava/util/regex/Pattern;

    invoke-virtual {v4, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 142
    .local v1, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 143
    new-array v4, v6, [I

    fill-array-data v4, :array_0

    invoke-direct {p0, v1, v4}, Lhirondelle/date4j/DateTimeParser;->getGroup(Ljava/util/regex/Matcher;[I)Ljava/lang/String;

    move-result-object v3

    .line 144
    .local v3, "year":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 145
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p0, Lhirondelle/date4j/DateTimeParser;->fYear:Ljava/lang/Integer;

    .line 147
    :cond_0
    const/4 v4, 0x2

    new-array v4, v4, [I

    fill-array-data v4, :array_1

    invoke-direct {p0, v1, v4}, Lhirondelle/date4j/DateTimeParser;->getGroup(Ljava/util/regex/Matcher;[I)Ljava/lang/String;

    move-result-object v2

    .line 148
    .local v2, "month":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 149
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p0, Lhirondelle/date4j/DateTimeParser;->fMonth:Ljava/lang/Integer;

    .line 151
    :cond_1
    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    aput v6, v4, v5

    invoke-direct {p0, v1, v4}, Lhirondelle/date4j/DateTimeParser;->getGroup(Ljava/util/regex/Matcher;[I)Ljava/lang/String;

    move-result-object v0

    .line 152
    .local v0, "day":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 153
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p0, Lhirondelle/date4j/DateTimeParser;->fDay:Ljava/lang/Integer;

    .line 159
    :cond_2
    return-void

    .line 157
    .end local v0    # "day":Ljava/lang/String;
    .end local v2    # "month":Ljava/lang/String;
    .end local v3    # "year":Ljava/lang/String;
    :cond_3
    new-instance v4, Lhirondelle/date4j/DateTimeParser$UnknownDateTimeFormat;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected format for date:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lhirondelle/date4j/DateTimeParser$UnknownDateTimeFormat;-><init>(Ljava/lang/String;)V

    throw v4

    .line 143
    :array_0
    .array-data 4
        0x1
        0x4
        0x6
    .end array-data

    .line 147
    :array_1
    .array-data 4
        0x2
        0x5
    .end array-data
.end method

.method private parseTime(Ljava/lang/String;)V
    .locals 8
    .param p1, "aTime"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x4

    .line 171
    sget-object v5, Lhirondelle/date4j/DateTimeParser;->TIME:Ljava/util/regex/Pattern;

    invoke-virtual {v5, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 172
    .local v2, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 173
    new-array v5, v7, [I

    fill-array-data v5, :array_0

    invoke-direct {p0, v2, v5}, Lhirondelle/date4j/DateTimeParser;->getGroup(Ljava/util/regex/Matcher;[I)Ljava/lang/String;

    move-result-object v1

    .line 174
    .local v1, "hour":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 175
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, p0, Lhirondelle/date4j/DateTimeParser;->fHour:Ljava/lang/Integer;

    .line 177
    :cond_0
    const/4 v5, 0x3

    new-array v5, v5, [I

    fill-array-data v5, :array_1

    invoke-direct {p0, v2, v5}, Lhirondelle/date4j/DateTimeParser;->getGroup(Ljava/util/regex/Matcher;[I)Ljava/lang/String;

    move-result-object v3

    .line 178
    .local v3, "minute":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 179
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, p0, Lhirondelle/date4j/DateTimeParser;->fMinute:Ljava/lang/Integer;

    .line 181
    :cond_1
    const/4 v5, 0x2

    new-array v5, v5, [I

    fill-array-data v5, :array_2

    invoke-direct {p0, v2, v5}, Lhirondelle/date4j/DateTimeParser;->getGroup(Ljava/util/regex/Matcher;[I)Ljava/lang/String;

    move-result-object v4

    .line 182
    .local v4, "second":Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 183
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, p0, Lhirondelle/date4j/DateTimeParser;->fSecond:Ljava/lang/Integer;

    .line 185
    :cond_2
    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    aput v7, v5, v6

    invoke-direct {p0, v2, v5}, Lhirondelle/date4j/DateTimeParser;->getGroup(Ljava/util/regex/Matcher;[I)Ljava/lang/String;

    move-result-object v0

    .line 186
    .local v0, "decimalSeconds":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 187
    invoke-direct {p0, v0}, Lhirondelle/date4j/DateTimeParser;->convertToNanoseconds(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, p0, Lhirondelle/date4j/DateTimeParser;->fNanosecond:Ljava/lang/Integer;

    .line 193
    :cond_3
    return-void

    .line 191
    .end local v0    # "decimalSeconds":Ljava/lang/String;
    .end local v1    # "hour":Ljava/lang/String;
    .end local v3    # "minute":Ljava/lang/String;
    .end local v4    # "second":Ljava/lang/String;
    :cond_4
    new-instance v5, Lhirondelle/date4j/DateTimeParser$UnknownDateTimeFormat;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected format for time:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lhirondelle/date4j/DateTimeParser$UnknownDateTimeFormat;-><init>(Ljava/lang/String;)V

    throw v5

    .line 173
    :array_0
    .array-data 4
        0x1
        0x5
        0x8
        0xa
    .end array-data

    .line 177
    :array_1
    .array-data 4
        0x2
        0x6
        0x9
    .end array-data

    .line 181
    :array_2
    .array-data 4
        0x3
        0x7
    .end array-data
.end method

.method private splitIntoDateAndTime(Ljava/lang/String;)Lhirondelle/date4j/DateTimeParser$Parts;
    .locals 5
    .param p1, "aDateTime"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 104
    new-instance v2, Lhirondelle/date4j/DateTimeParser$Parts;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4}, Lhirondelle/date4j/DateTimeParser$Parts;-><init>(Lhirondelle/date4j/DateTimeParser;Lhirondelle/date4j/DateTimeParser$1;)V

    .line 105
    .local v2, "result":Lhirondelle/date4j/DateTimeParser$Parts;
    invoke-virtual {p0, p1}, Lhirondelle/date4j/DateTimeParser;->getDateTimeSeparator(Ljava/lang/String;)I

    move-result v0

    .line 106
    .local v0, "dateTimeSeparator":I
    if-lez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_0

    const/4 v1, 0x1

    .line 107
    .local v1, "hasDateTimeSeparator":Z
    :goto_0
    if-eqz v1, :cond_1

    .line 108
    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lhirondelle/date4j/DateTimeParser$Parts;->datePart:Ljava/lang/String;

    .line 109
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lhirondelle/date4j/DateTimeParser$Parts;->timePart:Ljava/lang/String;

    .line 117
    :goto_1
    return-object v2

    .end local v1    # "hasDateTimeSeparator":Z
    :cond_0
    move v1, v3

    .line 106
    goto :goto_0

    .line 111
    .restart local v1    # "hasDateTimeSeparator":Z
    :cond_1
    invoke-direct {p0, p1}, Lhirondelle/date4j/DateTimeParser;->hasColonInThirdPlace(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 112
    iput-object p1, v2, Lhirondelle/date4j/DateTimeParser$Parts;->timePart:Ljava/lang/String;

    goto :goto_1

    .line 115
    :cond_2
    iput-object p1, v2, Lhirondelle/date4j/DateTimeParser$Parts;->datePart:Ljava/lang/String;

    goto :goto_1
.end method


# virtual methods
.method getDateTimeSeparator(Ljava/lang/String;)I
    .locals 4
    .param p1, "aDateTime"    # Ljava/lang/String;

    .prologue
    .line 122
    const-string v1, " "

    .line 123
    .local v1, "SPACE":Ljava/lang/String;
    const/4 v0, -0x1

    .line 124
    .local v0, "NOT_FOUND":I
    move v2, v0

    .line 125
    .local v2, "result":I
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 126
    if-ne v2, v0, :cond_0

    .line 127
    const-string v3, "T"

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 129
    :cond_0
    return v2
.end method

.method parse(Ljava/lang/String;)Lhirondelle/date4j/DateTime;
    .locals 10
    .param p1, "aDateTime"    # Ljava/lang/String;

    .prologue
    .line 26
    if-nez p1, :cond_0

    .line 27
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "DateTime string is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 29
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 30
    .local v8, "dateTime":Ljava/lang/String;
    invoke-direct {p0, v8}, Lhirondelle/date4j/DateTimeParser;->splitIntoDateAndTime(Ljava/lang/String;)Lhirondelle/date4j/DateTimeParser$Parts;

    move-result-object v9

    .line 31
    .local v9, "parts":Lhirondelle/date4j/DateTimeParser$Parts;
    invoke-virtual {v9}, Lhirondelle/date4j/DateTimeParser$Parts;->hasTwoParts()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 32
    iget-object v1, v9, Lhirondelle/date4j/DateTimeParser$Parts;->datePart:Ljava/lang/String;

    invoke-direct {p0, v1}, Lhirondelle/date4j/DateTimeParser;->parseDate(Ljava/lang/String;)V

    .line 33
    iget-object v1, v9, Lhirondelle/date4j/DateTimeParser$Parts;->timePart:Ljava/lang/String;

    invoke-direct {p0, v1}, Lhirondelle/date4j/DateTimeParser;->parseTime(Ljava/lang/String;)V

    .line 41
    :cond_1
    :goto_0
    new-instance v0, Lhirondelle/date4j/DateTime;

    iget-object v1, p0, Lhirondelle/date4j/DateTimeParser;->fYear:Ljava/lang/Integer;

    iget-object v2, p0, Lhirondelle/date4j/DateTimeParser;->fMonth:Ljava/lang/Integer;

    iget-object v3, p0, Lhirondelle/date4j/DateTimeParser;->fDay:Ljava/lang/Integer;

    iget-object v4, p0, Lhirondelle/date4j/DateTimeParser;->fHour:Ljava/lang/Integer;

    iget-object v5, p0, Lhirondelle/date4j/DateTimeParser;->fMinute:Ljava/lang/Integer;

    iget-object v6, p0, Lhirondelle/date4j/DateTimeParser;->fSecond:Ljava/lang/Integer;

    iget-object v7, p0, Lhirondelle/date4j/DateTimeParser;->fNanosecond:Ljava/lang/Integer;

    invoke-direct/range {v0 .. v7}, Lhirondelle/date4j/DateTime;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 42
    .local v0, "result":Lhirondelle/date4j/DateTime;
    return-object v0

    .line 35
    .end local v0    # "result":Lhirondelle/date4j/DateTime;
    :cond_2
    invoke-virtual {v9}, Lhirondelle/date4j/DateTimeParser$Parts;->hasDateOnly()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 36
    iget-object v1, v9, Lhirondelle/date4j/DateTimeParser$Parts;->datePart:Ljava/lang/String;

    invoke-direct {p0, v1}, Lhirondelle/date4j/DateTimeParser;->parseDate(Ljava/lang/String;)V

    goto :goto_0

    .line 38
    :cond_3
    invoke-virtual {v9}, Lhirondelle/date4j/DateTimeParser$Parts;->hasTimeOnly()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 39
    iget-object v1, v9, Lhirondelle/date4j/DateTimeParser$Parts;->timePart:Ljava/lang/String;

    invoke-direct {p0, v1}, Lhirondelle/date4j/DateTimeParser;->parseTime(Ljava/lang/String;)V

    goto :goto_0
.end method
