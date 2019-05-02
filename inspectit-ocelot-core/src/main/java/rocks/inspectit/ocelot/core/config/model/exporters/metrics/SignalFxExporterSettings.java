package rocks.inspectit.ocelot.core.config.model.exporters.metrics;

import lombok.Data;
import lombok.NoArgsConstructor;

import javax.validation.constraints.NotNull;
import java.time.Duration;

@Data
@NoArgsConstructor
public class SignalFxExporterSettings {

    private boolean enabled;

    /**
     * The SignalFx token.
     */
    private String token;

    /**
     * The reporting interval in seconds.
     */
    @NotNull
    private Duration reportingInterval;
}
