.class Lcom/android/settings_ex/display/h;
.super Ljava/lang/Object;
.source "FluencyModeListPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic Yk:Lcom/android/settings_ex/display/FluencyModeListPreference;

.field final synthetic Yl:I


# direct methods
.method constructor <init>(Lcom/android/settings_ex/display/FluencyModeListPreference;I)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lcom/android/settings_ex/display/h;->Yk:Lcom/android/settings_ex/display/FluencyModeListPreference;

    iput p2, p0, Lcom/android/settings_ex/display/h;->Yl:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/settings_ex/display/h;->Yk:Lcom/android/settings_ex/display/FluencyModeListPreference;

    iget v1, p0, Lcom/android/settings_ex/display/h;->Yl:I

    invoke-static {v0, v1}, Lcom/android/settings_ex/display/FluencyModeListPreference;->c(Lcom/android/settings_ex/display/FluencyModeListPreference;I)V

    .line 140
    return-void
.end method
