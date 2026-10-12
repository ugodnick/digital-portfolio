INSERT INTO "profiles" ("id", "name", "description", "links", "updated_at")
VALUES (
    '3f1c2a44-8b0e-4d6a-9c11-0a1b2c3d4e5f',
    'Nikita Sergeevich Kashin',
    'Male, born on 20 September 2001. Backend developer specializing in Node.js and TypeScript, with 5 years and 9 months of commercial experience',
    ARRAY[
        'tel:+79644497339',
        'mailto:kashin.nikita@offerit.ru',
        'https://t.me/ugodnick'
    ]::TEXT[],
    CURRENT_TIMESTAMP
);

INSERT INTO "skills" ("id", "name", "level", "profile_id", "updated_at")
VALUES
    ('b1a00001-8b0e-4d6a-9c11-0a1b2c3d4e5f', 'SQL', 4, '3f1c2a44-8b0e-4d6a-9c11-0a1b2c3d4e5f', CURRENT_TIMESTAMP),
    ('b1a00002-8b0e-4d6a-9c11-0a1b2c3d4e5f', 'Node.js', 8, '3f1c2a44-8b0e-4d6a-9c11-0a1b2c3d4e5f', CURRENT_TIMESTAMP),
    ('b1a00003-8b0e-4d6a-9c11-0a1b2c3d4e5f', 'JavaScript', 9, '3f1c2a44-8b0e-4d6a-9c11-0a1b2c3d4e5f', CURRENT_TIMESTAMP),
    ('b1a00004-8b0e-4d6a-9c11-0a1b2c3d4e5f', 'TypeScript', 8, '3f1c2a44-8b0e-4d6a-9c11-0a1b2c3d4e5f', CURRENT_TIMESTAMP),
    ('b1a00005-8b0e-4d6a-9c11-0a1b2c3d4e5f', 'Linux', 3, '3f1c2a44-8b0e-4d6a-9c11-0a1b2c3d4e5f', CURRENT_TIMESTAMP),
    ('b1a00006-8b0e-4d6a-9c11-0a1b2c3d4e5f', 'Git', 5, '3f1c2a44-8b0e-4d6a-9c11-0a1b2c3d4e5f', CURRENT_TIMESTAMP),
    ('b1a00007-8b0e-4d6a-9c11-0a1b2c3d4e5f', 'Docker Compose', 4, '3f1c2a44-8b0e-4d6a-9c11-0a1b2c3d4e5f', CURRENT_TIMESTAMP),
    ('b1a00008-8b0e-4d6a-9c11-0a1b2c3d4e5f', 'NestJS', 9, '3f1c2a44-8b0e-4d6a-9c11-0a1b2c3d4e5f', CURRENT_TIMESTAMP),
    ('b1a00009-8b0e-4d6a-9c11-0a1b2c3d4e5f', 'Redis', 7, '3f1c2a44-8b0e-4d6a-9c11-0a1b2c3d4e5f', CURRENT_TIMESTAMP),
    ('b1a0000b-8b0e-4d6a-9c11-0a1b2c3d4e5f', 'Rust', 5, '3f1c2a44-8b0e-4d6a-9c11-0a1b2c3d4e5f', CURRENT_TIMESTAMP),
    ('b1a0000c-8b0e-4d6a-9c11-0a1b2c3d4e5f', 'PostgreSQL', 7, '3f1c2a44-8b0e-4d6a-9c11-0a1b2c3d4e5f', CURRENT_TIMESTAMP);

INSERT INTO "experience" ("id", "company", "position", "start_date", "end_date", "achievements", "profile_id", "updated_at")
VALUES
    (
        'c2b00001-8b0e-4d6a-9c11-0a1b2c3d4e5f',
        'Seaside IT',
        'Fullstack Developer',
        '2025-07-01',
        NULL,
        ARRAY[
            'Delivered the full cycle: a React frontend and a NestJS backend with BullMQ for streaming news processing.',
            'Added NLP features: automatic summarization and classification via the OpenAI API, plus personalized recommendations.',
            'Set up GitLab CI/CD, Kubernetes deployment, and Prometheus and Grafana monitoring.',
            'Architected a fault-tolerant Node.js sync service with a task queue that maps data between Yandex Fleet and Bitrix24 within API rate limits.',
            'Automated CRM onboarding by mapping Yandex driver profiles, including vehicle and license data, into Bitrix24 Contacts and Deals.',
            'Implemented webhook processing and API polling so both platforms stay in a consistent state.'
        ]::TEXT[],
        '3f1c2a44-8b0e-4d6a-9c11-0a1b2c3d4e5f',
        CURRENT_TIMESTAMP
    ),
    (
        'c2b00002-8b0e-4d6a-9c11-0a1b2c3d4e5f',
        'IT Test',
        'Fullstack Developer',
        '2023-11-01',
        '2025-06-01',
        ARRAY[
            'Owned the full development cycle: Electron (Angular) and a computational backend in Rust and NestJS.',
            'Personally responsible for a 99.9% SLA.'
        ]::TEXT[],
        '3f1c2a44-8b0e-4d6a-9c11-0a1b2c3d4e5f',
        CURRENT_TIMESTAMP
    ),
    (
        'c2b00003-8b0e-4d6a-9c11-0a1b2c3d4e5f',
        'Leadball',
        'Fullstack Developer',
        '2022-11-01',
        '2023-11-01',
        ARRAY[
            'Maintained a React and GraphQL (Apollo) frontend and a NestJS microservice backend with RabbitMQ.',
            'Designed an API for integrations with amoCRM, Bitrix24, Telegram, and WhatsApp.',
            'Built a visual drag-and-drop builder for communication flows.'
        ]::TEXT[],
        '3f1c2a44-8b0e-4d6a-9c11-0a1b2c3d4e5f',
        CURRENT_TIMESTAMP
    ),
    (
        'c2b00004-8b0e-4d6a-9c11-0a1b2c3d4e5f',
        'Iogru',
        'Fullstack Developer',
        '2022-02-01',
        '2022-11-01',
        ARRAY[
            'Built a real-time React dashboard with WebSockets and a NestJS backend from scratch that processes MQTT telemetry.'
        ]::TEXT[],
        '3f1c2a44-8b0e-4d6a-9c11-0a1b2c3d4e5f',
        CURRENT_TIMESTAMP
    ),
    (
        'c2b00005-8b0e-4d6a-9c11-0a1b2c3d4e5f',
        'Yumasoft',
        'Fullstack Developer',
        '2021-02-01',
        '2022-02-01',
        ARRAY[
            'Migrated a legacy ColdFusion system to a Node.js backend and Angular.',
            'Handled daily technical communication with the US team in English.'
        ]::TEXT[],
        '3f1c2a44-8b0e-4d6a-9c11-0a1b2c3d4e5f',
        CURRENT_TIMESTAMP
    );

INSERT INTO "projects" ("id", "name", "description", "url", "profile_id", "experience_id", "updated_at")
VALUES
    (
        'd3c00001-8b0e-4d6a-9c11-0a1b2c3d4e5f',
        'News aggregator with AI analytics',
        'A news aggregator with AI analytics. Stack: React, NestJS, Redis, PostgreSQL, Docker, OpenAI API.',
        'https://seasideit.ru/',
        '3f1c2a44-8b0e-4d6a-9c11-0a1b2c3d4e5f',
        'c2b00001-8b0e-4d6a-9c11-0a1b2c3d4e5f',
        CURRENT_TIMESTAMP
    ),
    (
        'd3c00006-8b0e-4d6a-9c11-0a1b2c3d4e5f',
        'Yandex Fleet and Bitrix24 integration',
        'Node.js middleware that syncs Yandex Fleet driver profiles into Bitrix24 Contacts and Deals through API polling and a task queue, within Bitrix24 rate limits. Stack: Node.js, Yandex Fleet API, Bitrix24 API.',
        NULL,
        '3f1c2a44-8b0e-4d6a-9c11-0a1b2c3d4e5f',
        'c2b00001-8b0e-4d6a-9c11-0a1b2c3d4e5f',
        CURRENT_TIMESTAMP
    ),
    (
        'd3c00002-8b0e-4d6a-9c11-0a1b2c3d4e5f',
        'Prolift',
        'Engineering software for web and desktop. Stack: Electron, Angular, NestJS, Rust, PostgreSQL, Docker, GitLab CI/CD.',
        'https://ittest-team.ru/',
        '3f1c2a44-8b0e-4d6a-9c11-0a1b2c3d4e5f',
        'c2b00002-8b0e-4d6a-9c11-0a1b2c3d4e5f',
        CURRENT_TIMESTAMP
    ),
    (
        'd3c00003-8b0e-4d6a-9c11-0a1b2c3d4e5f',
        'Marketing CRM platform',
        'A marketing CRM platform. Stack: React, NestJS, GraphQL, Prisma, PostgreSQL.',
        'https://leadball.ru/',
        '3f1c2a44-8b0e-4d6a-9c11-0a1b2c3d4e5f',
        'c2b00003-8b0e-4d6a-9c11-0a1b2c3d4e5f',
        CURRENT_TIMESTAMP
    ),
    (
        'd3c00005-8b0e-4d6a-9c11-0a1b2c3d4e5f',
        'Indoor farm automation',
        'An indoor-farm automation system. Stack: React, NestJS, MQTT, Redis, PostgreSQL, Kubernetes.',
        'https://iogru.com/',
        '3f1c2a44-8b0e-4d6a-9c11-0a1b2c3d4e5f',
        'c2b00004-8b0e-4d6a-9c11-0a1b2c3d4e5f',
        CURRENT_TIMESTAMP
    ),
    (
        'd3c00004-8b0e-4d6a-9c11-0a1b2c3d4e5f',
        'ACD Direct',
        'A US cloud contact center. Stack: Node.js, Angular, Transact-SQL.',
        'https://www.yumasoft.com/',
        '3f1c2a44-8b0e-4d6a-9c11-0a1b2c3d4e5f',
        'c2b00005-8b0e-4d6a-9c11-0a1b2c3d4e5f',
        CURRENT_TIMESTAMP
    );
